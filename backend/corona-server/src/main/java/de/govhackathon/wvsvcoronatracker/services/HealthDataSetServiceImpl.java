package de.govhackathon.wvsvcoronatracker.services;

import de.govhackathon.wvsvcoronatracker.model.HealthDataSet;
import de.govhackathon.wvsvcoronatracker.repositories.HealthDataSetRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
public class HealthDataSetServiceImpl implements HealthDataSetService {

    private HealthDataSetRepository healthDataSetRepository;

    @Override
    public HealthDataSet addHealthDataSet(HealthDataSet healthDataSet) {
        return healthDataSetRepository.save(healthDataSet);
    }
}
