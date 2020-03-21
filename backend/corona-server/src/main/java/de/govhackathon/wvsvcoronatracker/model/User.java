package de.govhackathon.wvsvcoronatracker.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Data
@EqualsAndHashCode(callSuper = false)
@Builder
@Entity
// quote user, see https://stackoverflow.com/questions/3608420/hibernate-saving-user-model-to-postgres
@Table(name = "\"USER\"")
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @NotNull
    private String token;

    @NotNull
    private String phoneHash;
}
