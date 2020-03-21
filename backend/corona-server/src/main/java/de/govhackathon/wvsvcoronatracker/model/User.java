package de.govhackathon.wvsvcoronatracker.model;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@Builder
@Entity
// quote user, see https://stackoverflow.com/questions/3608420/hibernate-saving-user-model-to-postgres
@Table(name="\"USER\"")
@NoArgsConstructor
public class User {

    @Id
    private String id;

    private String deviceToken;
}
