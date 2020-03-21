package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.model.User;
import de.govhackathon.wvsvcoronatracker.services.UsersService;
import java.util.Collections;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UsersController {

  @Autowired
  UsersService usersService;

  @GetMapping("/users")
  public List<User> getUsers() {

    return Collections.emptyList();
  }

}
