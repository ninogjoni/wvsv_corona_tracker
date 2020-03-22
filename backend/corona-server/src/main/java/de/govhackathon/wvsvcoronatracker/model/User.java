package de.govhackathon.wvsvcoronatracker.model;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;


@Data
@EqualsAndHashCode(callSuper = false)
@Builder
@Entity
// quote user, see https://stackoverflow.com/questions/3608420/hibernate-saving-user-model-to-postgres
@Table(name = "\"USER\"")
@AllArgsConstructor
@NoArgsConstructor
public class User {

    @NotNull
    @Id
    private String token;

    @NotNull
    private String phoneHash;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<HealthDataSet> healthDataSetList = new ArrayList<>();
}
