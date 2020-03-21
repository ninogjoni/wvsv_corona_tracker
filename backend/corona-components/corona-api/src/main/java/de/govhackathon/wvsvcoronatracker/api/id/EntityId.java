package de.govhackathon.wvsvcoronatracker.api.id;

import java.util.UUID;

public interface EntityId {

  UUID getId();

  String getIdAsString();

  EntityType getEntityType();

  String getEntityTypeKey();

}
