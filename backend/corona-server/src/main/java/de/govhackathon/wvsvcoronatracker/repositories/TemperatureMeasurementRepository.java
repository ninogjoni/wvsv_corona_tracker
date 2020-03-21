package de.govhackathon.wvsvcoronatracker.repositories;

import de.govhackathon.wvsvcoronatracker.model.TemperatureMeasurement;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TemperatureMeasurementRepository extends CrudRepository<TemperatureMeasurement, Integer> {

    List<TemperatureMeasurement> getTemperatureMeasurementsByUser_idOrderByTimeAsc(Integer userId);
}
