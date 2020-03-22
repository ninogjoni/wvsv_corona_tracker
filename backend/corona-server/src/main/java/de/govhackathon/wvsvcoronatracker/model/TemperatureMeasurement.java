package de.govhackathon.wvsvcoronatracker.model;

import de.govhackathon.wvsvcoronatracker.model.system.AppConfig;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
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
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    private String id;

    @OneToOne
    private User user;

    @NonNull
    private float temperature;

    @Builder.Default
    @NonNull
    private LocalDateTime time = LocalDateTime.now(AppConfig.TIMEZONE);
}
