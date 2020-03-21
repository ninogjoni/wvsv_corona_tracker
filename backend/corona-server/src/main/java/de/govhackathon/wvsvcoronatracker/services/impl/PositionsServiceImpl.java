package de.govhackathon.wvsvcoronatracker.services.impl;

import de.govhackathon.wvsvcoronatracker.model.Position;
import de.govhackathon.wvsvcoronatracker.services.PositionsService;
import java.time.LocalDateTime;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class PositionsServiceImpl implements PositionsService {

  @Override
  public Position savePosition(Position position) {
    return null;
  }

  @Override
  public List<Position> getPositions() {
    return null;
  }

  @Override
  public List<Position> getPositionsFrom(final LocalDateTime from) {
    return null;
  }

  @Override
  public List<Position> getPositionsTo(final LocalDateTime to) {
    return null;
  }

  @Override
  public List<Position> getPositionsFromTo(final LocalDateTime from, final LocalDateTime to) {
    return null;
  }

  @Override
  public List<Position> getPositionsTo(final List<Integer> id) {
    return null;
  }

  @Override
  public List<Position> getPositionsByUserId(final Integer userId) {
    return null;
  }

  @Override
  public List<Position> getPositionsByUserIdFrom(final Integer userId, final LocalDateTime from) {
    return null;
  }

  @Override
  public List<Position> getPositionsByUserIdTo(final Integer userId, final LocalDateTime to) {
    return null;
  }

  @Override
  public List<Position> getPositionsByUserIdFromTo(final Integer userId, final LocalDateTime from, final LocalDateTime to) {
    return null;
  }
}
