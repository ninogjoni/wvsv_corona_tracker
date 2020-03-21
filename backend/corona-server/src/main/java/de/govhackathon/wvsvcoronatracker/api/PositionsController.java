package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.model.Position;
import de.govhackathon.wvsvcoronatracker.services.PositionsService;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PositionsController {

  @Autowired
  PositionsService positionsService;

  @GetMapping("/positions")
  public List<Position> getPositions(@RequestParam Optional<Integer> userId) {

    return Collections.emptyList();
  }

}
