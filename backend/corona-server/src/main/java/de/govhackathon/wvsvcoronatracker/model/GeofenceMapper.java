package de.govhackathon.wvsvcoronatracker.model;

import de.ghwct.service.model.GeofenceDto;
import org.mapstruct.CollectionMappingStrategy;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.NullValueCheckStrategy;


@Mapper(componentModel = "spring",
    collectionMappingStrategy = CollectionMappingStrategy.ADDER_PREFERRED,
    nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface GeofenceMapper {

    GeoFence toEntity(GeofenceDto dto);

    @InheritInverseConfiguration
    GeofenceDto toDto(GeoFence entity);
}
