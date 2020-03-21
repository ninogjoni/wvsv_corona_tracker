package de.govhackathon.wvsvcoronatracker.services;

import java.time.LocalDateTime;
import java.util.Optional;

import de.govhackathon.wvsvcoronatracker.model.TemperatureMeasurement;

public interface BodyTempService {

  /**
   * Get the timestamp of last reported temperature.
   */
  Optional<LocalDateTime> getLastBodyTempByUser(String userId);

  /**
   * Add new self reported temperature for user.
   */
  TemperatureMeasurement addBodyTemperature(TemperatureMeasurement measurement);
}
