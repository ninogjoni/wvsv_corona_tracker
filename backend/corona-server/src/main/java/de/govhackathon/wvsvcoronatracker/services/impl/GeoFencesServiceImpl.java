package de.govhackathon.wvsvcoronatracker.services.impl;

import de.govhackathon.wvsvcoronatracker.model.GeoFence;
import de.govhackathon.wvsvcoronatracker.model.User;
import de.govhackathon.wvsvcoronatracker.services.GeoFencesService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GeoFencesServiceImpl implements GeoFencesService {

    @Override
    public List<GeoFence> getGeoFences() {
        return null;
    }

    @Override
    public GeoFence createGeoFence(GeoFence geofence) {
        return null;
    }

    @Override
    public User updateGeoFence(Integer id, GeoFence geoFence) {
        return null;
    }

    @Override
    public void deleteGeoFence(Integer id) {

    }
}
