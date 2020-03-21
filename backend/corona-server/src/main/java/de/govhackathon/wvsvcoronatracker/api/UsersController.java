package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.api.UsersApi;
import de.ghwct.service.model.UserDto;
import de.govhackathon.wvsvcoronatracker.services.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.List;

@Component
public class UsersController implements UsersApi {

    @Autowired
    UsersService usersService;

    @Override
    public ResponseEntity<List<UserDto>> getUsers(String userId) {
        // TODO implement me
        return ResponseEntity.ok().body(Collections.emptyList());
    }
}
