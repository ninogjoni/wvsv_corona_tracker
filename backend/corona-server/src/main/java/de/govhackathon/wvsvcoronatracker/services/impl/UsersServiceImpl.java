package de.govhackathon.wvsvcoronatracker.services.impl;

import de.ghwct.service.model.UserDto;
import de.govhackathon.wvsvcoronatracker.services.UsersService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersServiceImpl implements UsersService {

    @Override
    public List<UserDto> getUsers() {
        return null;
    }

    @Override
    public UserDto createUser(final UserDto user) {
        return null;
    }

    @Override
    public UserDto updateUser(final Integer id, final UserDto user) {
        return null;
    }

    @Override
    public void deleteUser(final Integer id) {

    }
}