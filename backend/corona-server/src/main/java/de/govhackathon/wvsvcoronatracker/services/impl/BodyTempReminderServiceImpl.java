import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

import de.govhackathon.wvsvcoronatracker.model.User;
import de.govhackathon.wvsvcoronatracker.services.UsersService;

/**
 * Send body temperature measurement reminder to users if
 * they didn't already report their temperature recently.
 */
@Component
public class BodyTempReminderServiceImpl {

    private UsersService usersService;
    private BodyTempService bodyTempService;
    private MessagingService messagingService;

    @Autowired
    public BodyTempReminderServiceImpl(UsersService usersService, BodyTempService bodyTempService, MessagingService messagingService) {
	this.usersService = usersService;
	this.bodyTempService = bodyTempService;
	this.messagingService = messagingService;
    }

    // Run at 08:00 daily
    @Scheduled(cron = "0 0 8 * * *")
    public void morningReminder() {
	LocalDateTime earlyMorning = LocalDate.now().atTime(4, 0);

	for(User user : this.usersService.getUsers()) {
	    LocalDateTime last = this.bodyTempService.getLastBodyTempByUser(user.getId());
	    if(last.isBefore(earlyMorning)) {
		this.messagingService.sendMessage(user.getDeviceId(), "reminder"); // TODO: text
	    }
	}
    }

    // Run at 20:00 daily
    @Scheduled(cron = "0 0 20 * * *")
    public void eveningReminder() {
	LocalDateTime earlyEvening = LocalDate.now().atTime(16, 0);

	for(User user : this.usersService.getUsers()) {
	    LocalDateTime last = this.bodyTempService.getLastBodyTempByUser(user.getId());
	    if(last.isBefore(earlyMorning)) {
		this.messagingService.sendMessage(user.getDeviceId(), "reminder"); // TODO: text
	    }
	}
    }
}
