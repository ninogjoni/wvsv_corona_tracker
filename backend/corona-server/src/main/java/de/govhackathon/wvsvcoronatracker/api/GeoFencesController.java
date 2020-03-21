package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.api.GeofencesApi;
import de.ghwct.service.model.GeofenceDto;
import de.govhackathon.wvsvcoronatracker.model.GeofenceMapper;
import de.govhackathon.wvsvcoronatracker.services.GeoFencesService;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.List;

@Component
public class GeoFencesController implements GeofencesApi {

    @Autowired
    GeoFencesService geoFencesService;
    GeofenceMapper geofenceMapper;

    @Override
    public ResponseEntity<List<GeofenceDto>> getGeofences(Boolean all, String userId, Boolean refresh) {
        return ResponseEntity.ok().body(geoFencesService.getGeoFences().stream().map(geoFence -> this.geofenceMapper.toDto(geoFence)).collect(
            Collectors.toList()));
    }
}
