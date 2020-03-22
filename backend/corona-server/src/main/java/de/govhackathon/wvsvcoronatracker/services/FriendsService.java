package de.govhackathon.wvsvcoronatracker.services;

import de.govhackathon.wvsvcoronatracker.model.Friend;
import de.govhackathon.wvsvcoronatracker.model.User;

import java.util.List;

public interface FriendsService {

    /**
     * Add friends to user
     *
     */
    void addFriendsForUser(User user, List<Friend> friends);

    /**
     * Deletes all friends for user
     *
     */
    void deleteUsersFriends(User user);
}
