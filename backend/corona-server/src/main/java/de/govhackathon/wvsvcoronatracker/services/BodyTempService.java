package de.govhackathon.wvsvcoronatracker.services;

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
