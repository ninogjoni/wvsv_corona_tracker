package de.govhackathon.wvsvcoronatracker.services;

import de.ghwct.service.model.Geofence;
import de.ghwct.service.model.User;
import java.util.List;

public interface GeoFencesService {

  /**
   * Get all geo fences
   * @return List of all geo fences, empty collection if none available
   */
  List<Geofence> getGeoFences();

  /**
   * Create a geo fence
   * @param geofence data to create geo fence from
   * @return Created geo fence
   */
  Geofence createGeofence(final Geofence geofence);

  /**
   * Update a geo fence
   * @param id geo fence id
   * @param geoFence geo fence data to be changed
   * @return Updated geo fence
   */
  User updateGeoFence(final Integer id, final Geofence geoFence);

  /**
   * Delete a geo fence
   * @param id geo fence id
   */
  void deleteGeoFence(final Integer id);
}
