package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.api.ReportsApi;
import de.ghwct.service.model.ReportTrips;
import de.govhackathon.wvsvcoronatracker.services.ReportsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.time.OffsetDateTime;
import java.util.Collections;
import java.util.List;

@Component
public class ReportsController implements ReportsApi {

    @Autowired
    ReportsService reportsService;

    @Override
    public ResponseEntity<List<ReportTrips>> getLocations(OffsetDateTime from, OffsetDateTime to, List<String> deviceId) {
        // TODO implement me
        return ResponseEntity.ok().body(Collections.emptyList());
    }
}
