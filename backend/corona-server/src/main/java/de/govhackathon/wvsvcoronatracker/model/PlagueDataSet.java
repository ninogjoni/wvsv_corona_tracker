package de.govhackathon.wvsvcoronatracker.model;

import de.govhackathon.wvsvcoronatracker.model.system.AppConfig;
import lombok.Builder;

import java.time.LocalDateTime;
import java.time.ZoneOffset;

public class PlagueDataSet {

    private User user;

    @Builder.Default
    private LocalDateTime creationDate = LocalDateTime.now(AppConfig.TIMEZONE);

    private MedicalState medicalState = MedicalState.UNKNOWN;

    private GeoFence geoFence;

    private Position position;
}
