package de.govhackathon.wvsvcoronatracker.model;

import de.govhackathon.wvsvcoronatracker.model.system.AppConfig;
import lombok.*;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import java.io.Serializable;
import java.time.LocalDateTime;

@Data
@EqualsAndHashCode(callSuper = false)
@Builder
@Entity
@Table(name = "TEMPERATURE_MEASUREMENT")
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class TemperatureMeasurement implements Serializable {

    @Id
    private Integer id;

    @OneToOne
    private User user;

    @NonNull
    private float temperature;

    @Builder.Default
    @NonNull
    private LocalDateTime time = LocalDateTime.now(AppConfig.TIMEZONE);
}
