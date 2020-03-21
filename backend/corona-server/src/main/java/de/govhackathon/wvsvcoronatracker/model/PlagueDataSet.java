package de.govhackathon.wvsvcoronatracker.model;

import lombok.Builder;

import java.time.LocalDateTime;
import java.time.ZoneOffset;

public class PlagueDataSet {

    private User user;

    @Builder.Default
    private LocalDateTime creationDate = LocalDateTime.now(ZoneOffset.UTC);

    private MedicalState medicalState = MedicalState.UNKNOWN;

    private GeoFence geoFence;

    private Position position;
}
