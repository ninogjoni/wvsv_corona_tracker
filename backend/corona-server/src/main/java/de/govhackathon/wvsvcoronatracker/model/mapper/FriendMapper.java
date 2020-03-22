package de.govhackathon.wvsvcoronatracker.model.mapper;

import de.ghwct.service.model.FriendDto;
import de.govhackathon.wvsvcoronatracker.model.Friend;
import org.mapstruct.*;


@Mapper(componentModel = "spring",
    collectionMappingStrategy = CollectionMappingStrategy.ADDER_PREFERRED,
    nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface FriendMapper {


  Friend toEntity(FriendDto dto);

  @InheritInverseConfiguration
  FriendDto toDto(Friend entity);

}
