package de.govhackathon.wvsvcoronatracker.model.mapper;

import de.ghwct.service.model.FriendDto;
import de.govhackathon.wvsvcoronatracker.model.User;
import org.mapstruct.*;


@Mapper(componentModel = "spring",
    collectionMappingStrategy = CollectionMappingStrategy.ADDER_PREFERRED,
    nullValueCheckStrategy = NullValueCheckStrategy.ALWAYS)
public interface FriendMapper {

  FriendDto toDto(User entity);

}
