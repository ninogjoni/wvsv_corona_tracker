package de.govhackathon.wvsvcoronatracker.api;

import de.govhackathon.wvsvcoronatracker.services.GeoFencesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GeoFencesController {

  @Autowired
  GeoFencesService geoFencesService;

}
