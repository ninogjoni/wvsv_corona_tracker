package de.govhackathon.wvsvcoronatracker.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;

@Setter
@Getter
@Builder
public class Position {

    private Integer id;

    private Integer deviceId;

    private String protocol;

    private Boolean outdated;

    private Boolean valid;

    private BigDecimal latitude;

    private BigDecimal longitude;

    private BigDecimal altitude;

    private Integer accuracy; // meters

    private Object network;
}
