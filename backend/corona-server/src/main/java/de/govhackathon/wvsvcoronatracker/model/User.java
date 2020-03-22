package de.govhackathon.wvsvcoronatracker.model;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;


@Data
@Builder
@Entity
// quote user, see https://stackoverflow.com/questions/3608420/hibernate-saving-user-model-to-postgres
@Table(name = "\"USER\"")
@AllArgsConstructor
@NoArgsConstructor
public class User {

    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    private String id;

    @NotNull
    private String token;

    @NotNull
    private String phoneHash;

    @OneToMany(mappedBy = "user", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<HealthDataSet> healthDataSetList = new ArrayList<>();


    @ManyToMany
    @JoinTable(name="tbl_friends",
            joinColumns=@JoinColumn(name="userId"),
            inverseJoinColumns=@JoinColumn(name="friendId")
    )
    @EqualsAndHashCode.Exclude
    private Set<User> friends;

    @ManyToMany
    @JoinTable(name="tbl_friends",
            joinColumns=@JoinColumn(name="friendId"),
            inverseJoinColumns=@JoinColumn(name="userId")
    )
    @EqualsAndHashCode.Exclude
    private Set<User> users;

}
