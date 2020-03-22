package de.govhackathon.wvsvcoronatracker.model;

import lombok.*;
import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import javax.validation.constraints.NotNull;


//@Data //do not use this: causes stackoverflow due to circular dependency
@EqualsAndHashCode(callSuper = false)
@Builder
@Entity
@Getter
@Setter
@Table(name = "FRIEND")
@AllArgsConstructor
@NoArgsConstructor
public class Friend {

    //TODO restructure to support the follwing:
    // one and the same phone hash can be friends of several users

    @Id
    @GeneratedValue(generator = "UUID")
    @GenericGenerator(
            name = "UUID",
            strategy = "org.hibernate.id.UUIDGenerator"
    )
    private String id;

    @NotNull
    private String phoneHash;

    @ManyToOne(fetch = FetchType.LAZY)
    private User user;
}
