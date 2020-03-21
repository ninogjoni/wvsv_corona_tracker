package de.govhackathon.wvsvcoronatracker.model;

import lombok.*;

import javax.persistence.*;

@Setter
@Getter
@Builder
@Table(name = "GEOFENCE")
@Entity
@AllArgsConstructor
@NoArgsConstructor
public class GeoFence {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    private String description;

    private String area;
}
