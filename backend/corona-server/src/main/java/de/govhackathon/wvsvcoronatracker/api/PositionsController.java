package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.api.PositionsApi;
import de.ghwct.service.model.Position;
import de.govhackathon.wvsvcoronatracker.services.PositionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.time.OffsetDateTime;
import java.util.Collections;
import java.util.List;

@Component
public class PositionsController implements PositionsApi {

    @Autowired
    PositionsService positionsService;

    @Override
    public ResponseEntity<List<Position>> getPositions(Integer userId, OffsetDateTime from, OffsetDateTime to, Integer id) {
        // TODO implement me
        return ResponseEntity.ok().body(Collections.emptyList());
    }
}
