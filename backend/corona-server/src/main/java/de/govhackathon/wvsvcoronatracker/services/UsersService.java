package de.govhackathon.wvsvcoronatracker.services;

import de.ghwct.service.model.UserDto;

import java.util.List;

public interface UsersService {

    /**
     * Get all users
     *
     * @return List of all users, empty collection if none available
     */
    List<UserDto> getUsers();

    /**
     * Create a user
     *
     * @param user data to create user from
     * @return Created user
     */
    UserDto createUser(final UserDto user);

    /**
     * Update a user
     *
     * @param id   users id
     * @param user user data to be changed
     * @return Updated user
     */
    UserDto updateUser(final Integer id, final UserDto user);

    /**
     * Delete a user
     *
     * @param id users id
     */
    void deleteUser(final Integer id);
}
