package de.govhackathon.wvsvcoronatracker.services.impl;

import de.ghwct.service.model.User;
import de.govhackathon.wvsvcoronatracker.services.UsersService;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class UsersServiceImpl implements UsersService {

  @Override
  public List<User> getUsers() {
    return null;
  }

  @Override
  public User createUser(final User user) {
    return null;
  }

  @Override
  public User updateUser(final Integer id, final User user) {
    return null;
  }

  @Override
  public void deleteUser(final Integer id) {

  }
}