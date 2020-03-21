package de.govhackathon.wvsvcoronatracker.repositories;

import de.govhackathon.wvsvcoronatracker.model.Position;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;

@Repository
public interface PositionsRepository extends JpaRepository<Position,Integer> {

    List<Position> findByUserId(String userId);

    List<Position> findByTimestamp(LocalDateTime timestamp);


    List<Position> findByUserIdAndTimestamp(String userId, LocalDateTime from);



}
