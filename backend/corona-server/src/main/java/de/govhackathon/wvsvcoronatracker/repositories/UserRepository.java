package de.govhackathon.wvsvcoronatracker.repositories;

import org.springframework.data.repository.CrudRepository;

import de.govhackathon.wvsvcoronatracker.model.User;

import java.util.Set;

public interface UserRepository extends CrudRepository<User, String> {

    User findByPhoneHash(String phoneHash);

    Set<User> findByUsers(User user);
}
