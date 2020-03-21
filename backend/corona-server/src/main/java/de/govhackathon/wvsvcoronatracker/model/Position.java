package de.govhackathon.wvsvcoronatracker.model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Setter
@Getter
@Builder
public class Position {

    private Integer id;

    private Integer userId;

    private LocalDateTime from;

    private LocalDateTime to;

    private String protocol;

    private Boolean outdated;

    private Boolean valid;

    private BigDecimal latitude;

    private BigDecimal longitude;

    private BigDecimal altitude;

    private Integer accuracy; // meters

    private Object network;
}
