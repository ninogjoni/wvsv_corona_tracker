package de.govhackathon.wvsvcoronatracker.model.mapper;

import de.ghwct.service.model.HealthDataSetDto;
import de.govhackathon.wvsvcoronatracker.model.HealthDataSet;
import de.govhackathon.wvsvcoronatracker.model.User;
import org.mapstruct.*;

@Mapper(componentModel = "spring",
    collectionMappingStrategy = CollectionMappingStrategy.ADDER_PREFERRED,
    nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface HealthDataSetMapper {

  @Mappings({
          @Mapping(target = "creationDate", source = "time")
  })
  HealthDataSet toEntity(HealthDataSetDto dto);

  @InheritInverseConfiguration
  HealthDataSetDto toDto(HealthDataSet entity);

}
