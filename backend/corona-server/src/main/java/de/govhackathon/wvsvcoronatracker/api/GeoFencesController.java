package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.api.GeofencesApi;
import de.ghwct.service.model.GeofenceDto;
import de.govhackathon.wvsvcoronatracker.model.mapper.GeofenceMapper;
import de.govhackathon.wvsvcoronatracker.model.system.AppConfig;
import de.govhackathon.wvsvcoronatracker.services.GeoFencesService;
import java.util.stream.Collectors;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(value = AppConfig.API_PATH)
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
