package de.govhackathon.wvsvcoronatracker.services.impl;

import de.govhackathon.wvsvcoronatracker.model.Position;
import de.govhackathon.wvsvcoronatracker.repositories.PositionsRepository;
import de.govhackathon.wvsvcoronatracker.services.PositionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class PositionsServiceImpl implements PositionsService {

  @Autowired
  private PositionsRepository positionsRepository;

  @Override
  public Position savePosition(Position position) {
    return positionsRepository.save(position);
  }

  @Override
  public List<Position> getPositions() {
    return positionsRepository.findAll();
  }

  @Override
  public List<Position> getPositionsFrom(final LocalDateTime from) {
    return positionsRepository.findByFrom(from);
  }

  @Override
  public List<Position> getPositionsTo(final LocalDateTime to) {
    return positionsRepository.findByTo(to);
  }

  @Override
  public List<Position> getPositionsFromTo(final LocalDateTime from, final LocalDateTime to) {
    return positionsRepository.findByFromAndTo(from,to);
  }

  @Override
  public List<Position> getPositionsByUserId(final Integer userId) {
    return positionsRepository.findByUserId(userId);
  }

  @Override
  public List<Position> getPositionsByUserIdFrom(final Integer userId, final LocalDateTime from){
    return positionsRepository.findByUserIdAndFrom(userId,from);
  }

  @Override
  public List<Position> getPositionsByUserIdTo(final Integer userId, final LocalDateTime to) {
    return positionsRepository.findByUserIdAndTo(userId,to);
  }

  @Override
  public List<Position> getPositionsByUserIdFromTo(final Integer userId, final LocalDateTime from, final LocalDateTime to) {
    return positionsRepository.findByUserIdAndFromAndTo(userId,from,to);
  }
}
