package de.govhackathon.wvsvcoronatracker.api.id;

import java.util.Objects;
import java.util.UUID;

public abstract class IDBased<I extends UUIDBased> {

  protected I id;

  public IDBased() {
    super();
  }

  public IDBased(I id) {
    super();
    this.id = id;
  }

  public void setId(I id) {
    this.id = id;
  }

  public I getId() {
    return id;
  }

  public UUID getUuid() {
    if (id != null) {
      return id.getId();
    }
    return null;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    IDBased<?> idBased = (IDBased<?>) o;
    return Objects.equals(id, idBased.id);
  }

  @Override
  public int hashCode() {
    return Objects.hash(id);
  }

}
