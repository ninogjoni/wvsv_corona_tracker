package de.govhackathon.wvsvcoronatracker.services.impl;

import de.govhackathon.wvsvcoronatracker.model.User;
import de.govhackathon.wvsvcoronatracker.services.BodyTempService;
import de.govhackathon.wvsvcoronatracker.services.PushService;
import de.govhackathon.wvsvcoronatracker.services.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * Send body temperature measurement reminder to users if
 * they didn't already report their temperature recently.
 */
@Component
public class BodyTempReminderServiceImpl {

    // TODO: i18n
    private static final String TITLE = "Fiebermessen";
    private static final String REMINDER = "Bitte trage deine Körpertemperatur in die App ein";

    private UsersService usersService;
    private BodyTempService bodyTempService;
    private PushService pushService;

    @Autowired
    public BodyTempReminderServiceImpl(UsersService usersService, BodyTempService bodyTempService, PushService pushService) {
        this.usersService = usersService;
        this.bodyTempService = bodyTempService;
        this.pushService = pushService;
    }

    // Run at 08:00 daily
    @Scheduled(cron = "0 0 8 * * *")
    public void morningReminder() {
        this.sendReminders(4);
    }

    // Run at 20:00 daily
    @Scheduled(cron = "0 0 20 * * *")
    public void eveningReminder() {
        this.sendReminders(16);
    }

    /**
     * Send reminder to all users that have not yet reported
     * their temperature after "afterHour" (0-23) today.
     */
    private void sendReminders(int afterHour) {
        LocalDateTime limit = LocalDate.now().atTime(afterHour, 0);

        for (User user : this.usersService.getUsers()) {
            LocalDateTime last = this.bodyTempService.getLastBodyTempByUser(user.getId());
            if (last.isBefore(limit)) {
                this.pushService.sendPushToDevice(this.TITLE, this.REMINDER, user.getToken());
            }
        }
    }
}
