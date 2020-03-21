package de.govhackathon.wvsvcoronatracker.api;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;

import de.ghwct.service.api.MeasurementApi;
import de.ghwct.service.model.TempMeasurementDto;
import de.ghwct.service.model.TimeStampDto;
import de.govhackathon.wvsvcoronatracker.model.TemperatureMeasurementMapper;
import de.govhackathon.wvsvcoronatracker.services.BodyTempService;

public class MeasurementController implements MeasurementApi {

  private BodyTempService bodyTempService;
  private TemperatureMeasurementMapper mapper;

  @Autowired
  MeasurementController(BodyTempService bodyTempService, TemperatureMeasurementMapper temperatureMeasurementMapper) {
    this.bodyTempService = bodyTempService;
    this.mapper = temperatureMeasurementMapper;
  }

  @Override
  public ResponseEntity<TempMeasurementDto> createBodyTempMeasurement(TempMeasurementDto dto) {
    this.bodyTempService.addBodyTemperature(this.mapper.toEntity(dto));
    return ResponseEntity.ok(dto);
  }

  @Override
  public ResponseEntity<TimeStampDto> getLastestBodyTempMeasurement(String id) {
    Optional<LocalDateTime> lastBodyTempByUser = this.bodyTempService.getLastBodyTempByUser(id);
    TimeStampDto timeStampDto = lastBodyTempByUser
        .map(Timestamp::valueOf)
        .map(timestamp -> BigDecimal.valueOf(timestamp.getTime()).setScale(0, BigDecimal.ROUND_DOWN))
        .map(timestamp -> new TimeStampDto().timestamp(timestamp))
        .orElse(new TimeStampDto());
    return ResponseEntity.ok().body(timeStampDto);
  }

}
