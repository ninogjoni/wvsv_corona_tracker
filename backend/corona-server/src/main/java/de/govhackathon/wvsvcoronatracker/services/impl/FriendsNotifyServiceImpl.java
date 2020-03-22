package de.govhackathon.wvsvcoronatracker.services.impl;

import de.govhackathon.wvsvcoronatracker.model.MedicalState;
import de.govhackathon.wvsvcoronatracker.model.User;
import de.govhackathon.wvsvcoronatracker.services.FriendsNotifyService;
import de.govhackathon.wvsvcoronatracker.services.FriendsService;
import de.govhackathon.wvsvcoronatracker.services.PushService;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
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
  private FriendsService friendsService;

  @Autowired
  public FriendsNotifyServiceImpl(PushService pushService, FriendsService friendsService) {
    this.pushService = pushService;
    this.friendsService = friendsService;
  }

  public void onMedicalStateChanged(User user, MedicalState state) {
    switch(state) {
      case INFECTED:
      case CURED:
        this.iterateFriends(user, state);
    }
  }

  private void iterateFriends(User user, MedicalState state) {
    Set<User> friends = this.friendsService.getUsersFriends(user);

    for(User friend : friends) {
      this.pushService.sendPushToDevice(this.TITLE, String.format("Dein Freund {NAME} ist %s", state), friend.getToken(), this.buildData(user.getToken()));
    }

    for(User friend : friends) {
      this.iterateFriendsRecursion(user, state, friend, 1);
    }
  }

  private void iterateFriendsRecursion(User user, MedicalState state, User friend, Integer degree) {
    Set<User> friends2 = this.friendsService.getUsersFriends(friend);

    for(User friend2 : friends2) {
      if(degree < 2) {
        this.pushService.sendPushToDevice(this.TITLE, String.format("Ein Freund von {NAME} ist %s", friend.getName(), state), friend2.getToken(), this.buildData(friend.getToken()));
      } else {
        this.pushService.sendPushToDevice(this.TITLE, String.format("Ein Freund %d. Grades von {NAME} ist %s", degree, friend.getName(), state), friend2.getToken(), this.buildData(friend.getToken()));
      }
    }

    for(User friend2 : friends2) {
      if(degree < this.MAX_DEGREES) {
        this.iterateFriendsRecursion(user, state, friend2, degree+1);
      }
    }
  }

  private Map<String, String> buildData(String token) {
    Map<String, String> map = new HashMap<String, String>();
    map.put("friendToken", token);
    return map;
  }
}
