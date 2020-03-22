package de.govhackathon.wvsvcoronatracker.api.id;

import java.util.Objects;
import java.util.UUID;


public abstract class UUIDBased implements EntityId {

  private final UUID uuid;

  public UUIDBased() {
    this(UUID.randomUUID());
  }

  public UUIDBased(UUID uuid) {
    this.uuid = uuid;
  }


  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    UUIDBased uuidBased = (UUIDBased) o;
    return Objects.equals(uuid, uuidBased.uuid);
  }

  @Override
  public UUID getId() {
    return uuid;
  }

  @Override
  public String getIdAsString() {
    return uuid.toString();
  }

  @Override
  public int hashCode() {
    return Objects.hash(uuid);
  }

  @Override
  public String toString() {
    return uuid.toString();
  }

  @Override
  public String getEntityTypeKey() {
    return getEntityType().name();
  }
}
