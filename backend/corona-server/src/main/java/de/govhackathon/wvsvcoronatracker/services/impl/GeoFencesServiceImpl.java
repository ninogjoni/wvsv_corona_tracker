package de.govhackathon.wvsvcoronatracker.services.impl;

import de.ghwct.service.model.Geofence;
import de.ghwct.service.model.User;
import de.govhackathon.wvsvcoronatracker.services.GeoFencesService;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class GeoFencesServiceImpl implements GeoFencesService {

  @Override
  public List<Geofence> getGeoFences() {
    return null;
  }

  @Override
  public Geofence createGeofence(final Geofence geofence) {
    return null;
  }

  @Override
  public User updateGeoFence(final Integer id, final Geofence geoFence) {
    return null;
  }

  @Override
  public void deleteGeoFence(final Integer id) {

  }
}
