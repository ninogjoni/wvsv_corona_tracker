package de.govhackathon.wvsvcoronatracker.model.system;

import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Data
@EqualsAndHashCode(callSuper = false)
@Builder
@Entity
@Table(name = "APP_CONFIG")
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class AppConfig {

    public static final String FCM_KEY = "fcm.apikey";

    @Id
    private String key;

    @NotNull
    private String value;
}
