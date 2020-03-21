package de.govhackathon.wvsvcoronatracker.model;

import de.ghwct.service.model.PositionDto;
import org.mapstruct.*;

@Mapper(componentModel = "spring",
        collectionMappingStrategy = CollectionMappingStrategy.ADDER_PREFERRED,
        nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface PositionMapper {

    Position toEntity(PositionDto dto);

    @InheritInverseConfiguration
    PositionDto toDto(Position entity);
}
