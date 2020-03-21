package de.govhackathon.wvsvcoronatracker.services;

import java.util.List;
import java.util.Optional;

import de.govhackathon.wvsvcoronatracker.model.User;

public interface UsersService {

  /**
   * Get all users
   *
   * @return List of all users, empty collection if none available
   */
  List<User> getUsers();

  /**
   * Get a user by id
   *
   * @return users or null
   */
  Optional<User> getUser(String id);

  /**
   * Create a user
   *
   * @param user data to create user from
   * @return Created user
   */
  User createUser(final User user);

  /**
   * Update a user
   *
   * @param id   users id
   * @param user user data to be changed
   * @return Updated user
   */
  User updateUser(final User user);

  /**
   * Delete a user
   *
   * @param id users id
   */
  void deleteUser(final User user);
}
