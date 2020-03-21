package de.govhackathon.wvsvcoronatracker.api;

import de.govhackathon.wvsvcoronatracker.services.ReportsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ReportsController {

  @Autowired
  ReportsService reportsService;

}
