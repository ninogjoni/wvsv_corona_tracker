package de.govhackathon.wvsvcoronatracker.services;

import de.govhackathon.wvsvcoronatracker.model.User;

import java.util.Set;

public interface FriendsService {

    /**
     * Add friends to user
     *
     */
    void addFriendsForUser(User user, Set<User> friends);


    /**
     * Get all friends for user
     *
     */
    Set<User> getUsersFriends(User user);

    /**
     * Deletes all friends for user
     *
     */
    void deleteUsersFriends(User user);

}
