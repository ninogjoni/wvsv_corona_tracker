package de.govhackathon.wvsvcoronatracker.model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Builder
public class GeoFence {

    private Integer id;

    private String name ;

    private String description ;

    private String area;
}
