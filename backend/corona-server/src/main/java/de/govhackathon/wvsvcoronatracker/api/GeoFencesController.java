package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.model.Geofence;
import de.ghwct.service.model.Position;
import de.govhackathon.wvsvcoronatracker.services.GeoFencesService;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GeoFencesController {

  @Autowired
  GeoFencesService geoFencesService;

  @GetMapping("/geofencess")
  public List<Geofence> getGeoFencess(@RequestParam Optional<Integer> userId) {

    return Collections.emptyList();
  }

}
