package de.govhackathon.wvsvcoronatracker.api;

import java.util.List;
import java.util.Set;
import java.util.function.Supplier;
import java.util.stream.Collectors;

import de.ghwct.service.model.FriendDto;
import de.govhackathon.wvsvcoronatracker.model.mapper.FriendMapper;
import de.govhackathon.wvsvcoronatracker.model.system.AppConfig;
import de.govhackathon.wvsvcoronatracker.services.FriendsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;

import de.ghwct.service.api.UsersApi;
import de.ghwct.service.model.UserDto;
import de.govhackathon.wvsvcoronatracker.model.User;
import de.govhackathon.wvsvcoronatracker.model.mapper.UserMapper;
import de.govhackathon.wvsvcoronatracker.services.UsersService;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.persistence.EntityNotFoundException;


@RestController
@RequestMapping(value = AppConfig.API_PATH)
public class UsersController implements UsersApi {

  public static final String ERRMSG_USER_NOT_FOUND = "user.not.found";

  @Autowired
  UsersService usersService;

  @Autowired
  FriendsService friendsService;

  @Autowired
  UserMapper userMapper;

  @Autowired
  FriendMapper friendMapper;


  @Override
  public ResponseEntity<List<UserDto>> getUsers(String userId) {
    return ResponseEntity.ok().body(usersService.getUsers().stream().map(userMapper::toDto).collect(Collectors.toList()));
  }

  @Override
  public ResponseEntity<UserDto> getUser(String id) {
    return ResponseEntity.ok().body(usersService.getUser(id).map(userMapper::toDto)
            .orElseThrow(getUserNotFoundException()));
  }

  @Override
  public ResponseEntity<UserDto> createUser(UserDto body) {
    User user = usersService.createUser(userMapper.toEntity(body));
    return ResponseEntity.ok().body(userMapper.toDto(user));
  }

  @Override
  public ResponseEntity<Void> deleteUser(String id) {
    usersService.getUser(String.valueOf(id)).ifPresent(usersService::deleteUser);
    return ResponseEntity.noContent().build();
  }

  @Override
  public ResponseEntity<Void> uploadFriends(String userId, List<FriendDto> friendDtoList) {

    User user = usersService.getUser(userId).orElseThrow(getUserNotFoundException());

    Set<User> friends = usersService.getUsersByPhoneHashes(friendDtoList
            .stream().map(FriendDto::getPhoneHash).collect(Collectors.toList()));

    if (friends.isEmpty()) {
      //TODO we should add the phoneHashes for which no user has been found to a "userCandidate" repo
      //to establish friends connections if a new user registers
      throw new IllegalStateException("no friends found");
    }

    //MVP: overwrite the friends list
    friendsService.deleteUsersFriends(user);

    friendsService.addFriendsForUser(user, friends);

    return ResponseEntity.ok().build();
  }

  @Override
  public ResponseEntity<List<FriendDto>> getFriends(String userId) {

    User user = usersService.getUser(userId).orElseThrow(getUserNotFoundException());

    return ResponseEntity.ok().body(friendsService.getUsersFriends(user)
            .stream().map(friendMapper::toDto).collect(Collectors.toList()));

  }

  private Supplier<EntityNotFoundException> getUserNotFoundException() {
    return () -> new EntityNotFoundException(ERRMSG_USER_NOT_FOUND);
  }

/*  @Override
  public ResponseEntity<UserDto> updateUser(String id, UserDto body) {
    User user = usersService.updateUser(userMapper.toEntity(body));
    return ResponseEntity.ok().body(userMapper.toDto(user));
  }*/
}
