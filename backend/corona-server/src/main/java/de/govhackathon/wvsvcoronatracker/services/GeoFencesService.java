package de.govhackathon.wvsvcoronatracker.services;

import de.ghwct.service.model.GeofenceDto;
import de.ghwct.service.model.UserDto;

import java.util.List;

public interface GeoFencesService {

    /**
     * Get all geo fences
     *
     * @return List of all geo fences, empty collection if none available
     */
    List<GeofenceDto> getGeoFences();

    /**
     * Create a geo fence
     *
     * @param geofence data to create geo fence from
     * @return Created geo fence
     */
    GeofenceDto createGeofence(final GeofenceDto geofence);

    /**
     * Update a geo fence
     *
     * @param id       geo fence id
     * @param geoFence geo fence data to be changed
     * @return Updated geo fence
     */
    UserDto updateGeoFence(final Integer id, final GeofenceDto geoFence);

    /**
     * Delete a geo fence
     *
     * @param id geo fence id
     */
    void deleteGeoFence(final Integer id);
}
