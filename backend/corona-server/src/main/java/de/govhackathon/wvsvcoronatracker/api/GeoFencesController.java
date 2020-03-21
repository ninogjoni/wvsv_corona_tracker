package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.api.GeofencesApi;
import de.ghwct.service.model.Geofence;
import de.govhackathon.wvsvcoronatracker.services.GeoFencesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.List;

@Component
public class GeoFencesController implements GeofencesApi {

    @Autowired
    GeoFencesService geoFencesService;

    @Override
    public ResponseEntity<List<Geofence>> getGeofences(Boolean all, Integer userId, Boolean refresh) {
        // TODO implement me
        return ResponseEntity.ok().body(Collections.emptyList());
    }
}
