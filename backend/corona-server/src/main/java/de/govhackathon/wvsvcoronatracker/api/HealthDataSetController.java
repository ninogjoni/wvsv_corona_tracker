package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.api.HealthDataSetApi;
import de.ghwct.service.model.HealthDataSetDto;
import de.govhackathon.wvsvcoronatracker.model.*;
import de.govhackathon.wvsvcoronatracker.model.mapper.HealthDataSetMapper;
import de.govhackathon.wvsvcoronatracker.services.HealthDataSetService;
import de.govhackathon.wvsvcoronatracker.services.UsersService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.persistence.EntityNotFoundException;


@RestController
@RequestMapping(value = UsersController.API_PATH)
@AllArgsConstructor
public class HealthDataSetController implements HealthDataSetApi {

    private UsersService usersService;

    private HealthDataSetMapper healthDataSetMapper;

    private HealthDataSetService healthDataSetService;

    @Override
    public ResponseEntity<HealthDataSetDto> createDataSet(HealthDataSetDto healthDataSetDto) {
        User user = usersService.getUser(healthDataSetDto.getUserId())
                .orElseThrow(() -> new EntityNotFoundException("user.not.found"));

        HealthDataSet healthDataSet = new HealthDataSet();
        healthDataSet.setUser(user);
        //TODO unify enums
        healthDataSet.setMedicalState(MedicalState.valueOf(healthDataSetDto.getMedicalState().toString()));

        healthDataSet = healthDataSetService.addHealthDataSet(healthDataSet);

        return ResponseEntity.ok().body(healthDataSetMapper.toDto(healthDataSet));
    }

}
