package de.govhackathon.wvsvcoronatracker.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Setter
@Getter
@Builder
@Entity
@NoArgsConstructor
public class Position {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private Integer userId;

    private LocalDateTime timestamp;

    private String protocol;

    private Boolean outdated;

    private Boolean valid;

    private BigDecimal latitude;

    private BigDecimal longitude;

    private BigDecimal altitude;

    private Integer accuracy; // meters

    private Object network;
}
