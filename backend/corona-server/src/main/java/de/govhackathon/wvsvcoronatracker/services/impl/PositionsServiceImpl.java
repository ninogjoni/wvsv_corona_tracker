package de.govhackathon.wvsvcoronatracker.services.impl;

import de.ghwct.service.model.PositionDto;
import de.govhackathon.wvsvcoronatracker.services.PositionsService;
import java.time.LocalDateTime;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class PositionsServiceImpl implements PositionsService {

  @Override
  public List<PositionDto> getPositions() {
    return null;
  }

  @Override
  public List<PositionDto> getPositionsFrom(final LocalDateTime from) {
    return null;
  }

  @Override
  public List<PositionDto> getPositionsTo(final LocalDateTime to) {
    return null;
  }

  @Override
  public List<PositionDto> getPositionsFromTo(final LocalDateTime from, final LocalDateTime to) {
    return null;
  }

  @Override
  public List<PositionDto> getPositionsTo(final List<Integer> id) {
    return null;
  }

  @Override
  public List<PositionDto> getPositionsByUserId(final Integer userId) {
    return null;
  }

  @Override
  public List<PositionDto> getPositionsByUserIdFrom(final Integer userId, final LocalDateTime from) {
    return null;
  }

  @Override
  public List<PositionDto> getPositionsByUserIdTo(final Integer userId, final LocalDateTime to) {
    return null;
  }

  @Override
  public List<PositionDto> getPositionsByUserIdFromTo(final Integer userId, final LocalDateTime from, final LocalDateTime to) {
    return null;
  }
}
