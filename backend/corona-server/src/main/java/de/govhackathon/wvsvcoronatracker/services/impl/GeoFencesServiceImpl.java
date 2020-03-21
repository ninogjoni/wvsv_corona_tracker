package de.govhackathon.wvsvcoronatracker.services.impl;

import de.ghwct.service.model.GeofenceDto;
import de.ghwct.service.model.UserDto;
import de.govhackathon.wvsvcoronatracker.services.GeoFencesService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GeoFencesServiceImpl implements GeoFencesService {

    @Override
    public List<GeofenceDto> getGeoFences() {
        return null;
    }

    @Override
    public GeofenceDto createGeofence(GeofenceDto geofence) {
        return null;
    }

    @Override
    public UserDto updateGeoFence(Integer id, GeofenceDto geoFence) {
        return null;
    }

    @Override
    public void deleteGeoFence(Integer id) {

    }
}
