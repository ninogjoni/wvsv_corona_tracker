package de.govhackathon.wvsvcoronatracker.repositories;

import de.govhackathon.wvsvcoronatracker.model.Friend;
import de.govhackathon.wvsvcoronatracker.model.User;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface FriendRepository extends CrudRepository<Friend, String> {

    List<Friend> findByUser(User user);
}
