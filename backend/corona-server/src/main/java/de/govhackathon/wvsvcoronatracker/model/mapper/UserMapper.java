package de.govhackathon.wvsvcoronatracker.model.mapper;

import de.govhackathon.wvsvcoronatracker.model.User;
import org.mapstruct.*;

import de.ghwct.service.model.UserDto;


@Mapper(componentModel = "spring",
    collectionMappingStrategy = CollectionMappingStrategy.ADDER_PREFERRED,
    nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS,
        uses = { HealthDataSetMapper.class })
public interface UserMapper {

  @Mappings({
          @Mapping(target = "healthDataSetList", source = "healthHistory")
  })
  User toEntity(UserDto dto);

  @InheritInverseConfiguration
  UserDto toDto(User entity);

}
