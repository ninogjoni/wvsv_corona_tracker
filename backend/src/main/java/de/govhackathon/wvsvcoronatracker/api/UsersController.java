package de.govhackathon.wvsvcoronatracker.api;

import de.govhackathon.wvsvcoronatracker.services.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UsersController {

  @Autowired
  UsersService usersService;

}
