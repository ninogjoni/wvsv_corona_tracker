package de.govhackathon.wvsvcoronatracker.repositories;

import de.govhackathon.wvsvcoronatracker.model.Position;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface PositionsRepository extends JpaRepository<Position,Integer> {

    List<Position> findByUserId(int userId);

    List<Position> findByTo(LocalDateTime to);

    List<Position> findByFrom(LocalDateTime from);

    List<Position> findByFromAndTo(LocalDateTime from, LocalDateTime to);

    List<Position> findByUserIdAndFrom(int userId, LocalDateTime from);

    List<Position> findByUserIdAndTo(int userId, LocalDateTime to);

    List<Position> findByUserIdAndFromAndTo(int userId,LocalDateTime from, LocalDateTime to);

}
