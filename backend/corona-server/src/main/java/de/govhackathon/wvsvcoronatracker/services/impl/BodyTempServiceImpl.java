package de.govhackathon.wvsvcoronatracker.services.impl;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import de.govhackathon.wvsvcoronatracker.model.TemperatureMeasurement;
import de.govhackathon.wvsvcoronatracker.repositories.TemperatureMeasurementRepository;
import de.govhackathon.wvsvcoronatracker.repositories.UserRepository;
import de.govhackathon.wvsvcoronatracker.services.BodyTempService;

@Service("bodyTempService")
public class BodyTempServiceImpl implements BodyTempService {

  private TemperatureMeasurementRepository temperatureMeasurementRepository;

  @Autowired
  public BodyTempServiceImpl(TemperatureMeasurementRepository temperatureMeasurementRepository, UserRepository userRepository) {
    this.temperatureMeasurementRepository = temperatureMeasurementRepository;
  }

  @Override
  public Optional<LocalDateTime> getLastBodyTempByUser(String userId) {
    List<TemperatureMeasurement> measurements =
        this.temperatureMeasurementRepository.getTemperatureMeasurementsByUser_idOrderByTimeAsc(userId);
    return !measurements.isEmpty() ? Optional.ofNullable(measurements.get(measurements.size() - 1).getTime()) : Optional.empty();
  }

  @Override
  public TemperatureMeasurement addBodyTemperature(TemperatureMeasurement measurement) {
    return this.temperatureMeasurementRepository.save(measurement);
  }

}
