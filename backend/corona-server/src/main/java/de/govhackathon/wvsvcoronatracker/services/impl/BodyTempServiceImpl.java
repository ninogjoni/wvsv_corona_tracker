package de.govhackathon.wvsvcoronatracker.services.impl;

import de.govhackathon.wvsvcoronatracker.services.BodyTempService;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service("bodyTempService")
public class BodyTempServiceImpl implements BodyTempService {

    @Override
    public LocalDateTime getLastBodyTempByUser(String userId) {
        return null;
    }

    @Override
    public void addBodyTemperature(String userId, LocalDateTime timestamp, int temperature) {

    }
}
