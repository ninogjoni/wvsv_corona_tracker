package de.govhackathon.wvsvcoronatracker.model;

import de.ghwct.service.model.TempMeasurementDto;
import de.govhackathon.wvsvcoronatracker.repositories.UserRepository;
import org.mapstruct.CollectionMappingStrategy;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.NullValueCheckStrategy;
import org.springframework.beans.factory.annotation.Autowired;

import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.util.Optional;

@Mapper(componentModel = "spring",
        collectionMappingStrategy = CollectionMappingStrategy.ADDER_PREFERRED,
        nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public abstract class TemperatureMeasurementMapper {

    @Autowired
    private UserRepository userRepository;

    @Mapping(target = "id", ignore = true)
    @Mapping(target = "user", expression = "java(getUser(dto.getUserId()))")
    @Mapping(target = "temperature", expression = "java(getTemperature(dto.getValue()))")
    @Mapping(target = "time", expression = "java(dto.getTime().toLocalDateTime())")
    abstract public TemperatureMeasurement toEntity(TempMeasurementDto dto);

    public User getUser(String userId) {
        Optional<User> existingUser = this.userRepository.findById(userId);
        return existingUser.isPresent() ? existingUser.get() : null;
    }

    public float getTemperature(Integer value) {
        return (float) (value / 100);
    }
}
