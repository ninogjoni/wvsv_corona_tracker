package de.govhackathon.wvsvcoronatracker.model.system;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

//import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Setter
@Getter
@Builder
public class AppConfig {

    public static final String FCM_KEY = "fcm.apikey";

    @NotNull
    //@Id
    private String key;

    private String value;
}
