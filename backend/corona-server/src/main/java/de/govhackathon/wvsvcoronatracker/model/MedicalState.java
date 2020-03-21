package de.govhackathon.wvsvcoronatracker.model;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public enum MedicalState {
    UNKNOWN("medical_state.unknown","unknown"),
    INFECTED("medical_state.infected","infected"),
    TREATMENT("medical_state.treatment","treatment"),
    CURED("medical_state.cured","cured"),
    ;

    private String i18n;
    private String name;

    public static MedicalState getByI18nKey(String i18n) {
        for (MedicalState item : MedicalState.values()) {
            if (item.getI18n().equals(i18n)) {
                return item;
            }
        }
        throw new RuntimeException("Medical State not found: " + i18n);
    }
}
