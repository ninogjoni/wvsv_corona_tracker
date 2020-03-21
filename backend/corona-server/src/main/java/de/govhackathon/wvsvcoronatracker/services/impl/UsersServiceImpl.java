package de.govhackathon.wvsvcoronatracker.services.impl;

import java.util.List;
import java.util.Optional;

import org.apache.commons.collections4.IterableUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import de.govhackathon.wvsvcoronatracker.model.User;
import de.govhackathon.wvsvcoronatracker.repositories.UserRepository;
import de.govhackathon.wvsvcoronatracker.services.UsersService;

@Service
public class UsersServiceImpl implements UsersService {

  @Autowired
  UserRepository userRepository;

  @Override
  public List<User> getUsers() {
    return IterableUtils.toList(userRepository.findAll());
  }

  @Override
  public Optional<User> getUser(String id) {
    return userRepository.findById(id);
  }

  @Override
  public User createUser(final User user) {
    return userRepository.save(user);
  }

  @Override
  public User updateUser(final User user) {
    return userRepository.save(user);
  }

  @Override
  public void deleteUser(final User user) {
    userRepository.delete(user);
  }
}
