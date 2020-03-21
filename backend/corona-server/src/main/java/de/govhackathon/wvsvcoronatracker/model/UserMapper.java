package de.govhackathon.wvsvcoronatracker.model;

import org.mapstruct.CollectionMappingStrategy;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.NullValueCheckStrategy;

import de.ghwct.service.model.UserDto;

@Mapper(componentModel = "spring",
    collectionMappingStrategy = CollectionMappingStrategy.ADDER_PREFERRED,
    nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface UserMapper {

  User toEntity(UserDto dto);

  @InheritInverseConfiguration
  UserDto toDto(User entity);

}
