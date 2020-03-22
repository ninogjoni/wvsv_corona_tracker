package de.govhackathon.wvsvcoronatracker.services.impl;

import de.govhackathon.wvsvcoronatracker.model.MedicalState;
import de.govhackathon.wvsvcoronatracker.model.User;
import de.govhackathon.wvsvcoronatracker.services.FriendsService;
import de.govhackathon.wvsvcoronatracker.services.PushService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("friendsNotifyService")
public class FriendsNotifyServiceImpl implements FriendsNotifyService {

  private static final Logger LOG = LoggerFactory.getLogger(FriendsNotifyServiceImpl.class);

  private static final Integer MAX_DEGREES = 2;

  private static final String TITLE = "Meldung in deinem Freundeskreis"; // TODO: text/i18n

  private PushService pushService;
  private FriendsService, friendsService;

  @Autowired
  public FriendsNotifyServiceImpl(PushService pushService, FriendsService friendsService) {
    this.pushService = pushService;
    this.friendsService = friendsService;
  }

  public void onMedicalStateChanged(User user, MedicalState state) {
    this.iterateFriends(user, state);
  }

  private void iterateFriends(User user, MedicalState state) {
    List<User> friends = this.friendsService.getUsersFriends(user);

    for(User friend : friends) {
      this.pushService.sendPushToDevice(this.TITLE, String.format("Hallo %s, Dein Freund %s ist %s", friend.getName(), user.getName(), state), friend.getDeviceToken(),);
    }

    for(User friend : friends) {
      this.iterateFriendsRecursion(user, state, friend, 1);
    }
  }

  private void iterateFriendsRecursion(User user, MedicalState state, User friend, Integer degree) {
    List<User> friends2 = this.friendsService.getUsersFriends(friend);

    for(User friend2 : friends2) {
      if(degree < 2) {
        this.pushService.sendPushToDevice(this.TITLE, String.format("Hallo %s, ein Freund von %s ist %s", friend2.getName(), friend.getName(), state), friend2.getDeviceToken());
      } else {
        this.pushService.sendPushToDevice(this.TITLE, String.format("Hallo %s, ein Freund %d. Grades von %s ist %s", friend2.getName(), degree, friend.getName(), state), friend2.getDeviceToken());
      }
    }

    for(User friend2 : friends2) {
      if(degree < this.MAX_DEGREES) {
        this.iterateFriendsRecursion(user, state, friend2, degree+1);
      }
    }
  }
}
