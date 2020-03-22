package de.govhackathon.wvsvcoronatracker.services.impl;

import de.govhackathon.wvsvcoronatracker.model.Friend;
import de.govhackathon.wvsvcoronatracker.model.User;
import de.govhackathon.wvsvcoronatracker.repositories.FriendRepository;
import de.govhackathon.wvsvcoronatracker.services.FriendsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class FriendsServiceImpl implements FriendsService {

    @Autowired
    private FriendRepository friendRepository;

    @Override
    public void addFriendsForUser(User user, List<Friend> friends) {

        //TODO find a better solution
        friends.forEach(f -> f.setUser(user));

        friendRepository.saveAll(friends);
    }

    @Override
    public void deleteUsersFriends(User user) {

        List<Friend> usersFriends = friendRepository.findByUser(user);
        friendRepository.deleteAll(usersFriends);
    }
}
