package de.govhackathon.wvsvcoronatracker.repositories;

import de.govhackathon.wvsvcoronatracker.model.HealthDataSet;
import org.springframework.data.repository.CrudRepository;

public interface HealthDataSetRepository extends CrudRepository<HealthDataSet, String> {
}
