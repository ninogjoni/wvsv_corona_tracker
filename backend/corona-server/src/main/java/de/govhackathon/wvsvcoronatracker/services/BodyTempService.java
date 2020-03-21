package de.govhackathon.wvsvcoronatracker.services;

import java.time.LocalDateTime;

public interface BodyTempService {

  /**
   * Get the timestamp of last reported temperature.
   */
  LocalDateTime getLastBodyTempByUser(String userId);

  /**
   * Add new self reported temperature for user.
   */
  void addBodyTemperature(String userId, LocalDateTime timestamp, int temperature);
}
