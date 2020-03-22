package de.govhackathon.wvsvcoronatracker.api;

import java.util.List;
import java.util.stream.Collectors;

import de.govhackathon.wvsvcoronatracker.model.system.AppConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;

import de.ghwct.service.api.UsersApi;
import de.ghwct.service.model.UserDto;
import de.govhackathon.wvsvcoronatracker.model.User;
import de.govhackathon.wvsvcoronatracker.model.mapper.UserMapper;
import de.govhackathon.wvsvcoronatracker.services.UsersService;
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
  UserMapper userMapper;

  @Override
  public ResponseEntity<List<UserDto>> getUsers(String userId) {
    return ResponseEntity.ok().body(usersService.getUsers().stream().map(userMapper::toDto).collect(Collectors.toList()));
  }

  @Override
  public ResponseEntity<UserDto> getUser(String id) {
    return ResponseEntity.ok().body(usersService.getUser(id).map(userMapper::toDto)
            .orElseThrow(() -> new EntityNotFoundException(ERRMSG_USER_NOT_FOUND)));
  }
  @Override
  public ResponseEntity<UserDto> createUser(UserDto body) {
    User user = usersService.createUser(userMapper.toEntity(body));
    return ResponseEntity.ok().body(userMapper.toDto(user));
  }

  @Override
  public ResponseEntity<Void> deleteUser(Integer id) {
    usersService.getUser(String.valueOf(id)).ifPresent(usersService::deleteUser);
    return ResponseEntity.noContent().build();
  }

/*  @Override
  public ResponseEntity<UserDto> updateUser(String id, UserDto body) {
    User user = usersService.updateUser(userMapper.toEntity(body));
    return ResponseEntity.ok().body(userMapper.toDto(user));
  }*/
}
