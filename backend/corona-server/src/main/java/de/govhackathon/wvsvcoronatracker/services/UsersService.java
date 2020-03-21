package de.govhackathon.wvsvcoronatracker.services;

import de.ghwct.service.model.User;
import java.util.List;

public interface UsersService {

  /**
   * Get all users
   * @return List of all users, empty collection if none available
   */
  List<User> getUsers();

  /**
   * Create a user
   * @param user data to create user from
   * @return Created user
   */
  User createUser(final User user);

  /**
   * Update a user
   * @param id users id
   * @param user user data to be changed
   * @return Updated user
   */
  User updateUser(final Integer id, final User user);

  /**
   * Delete a user
   * @param id users id
   */
  void deleteUser(final Integer id);
}
