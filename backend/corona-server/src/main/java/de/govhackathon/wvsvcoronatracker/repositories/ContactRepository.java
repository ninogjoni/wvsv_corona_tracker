package de.govhackathon.wvsvcoronatracker.repositories;

import de.govhackathon.wvsvcoronatracker.model.Contact;
import de.govhackathon.wvsvcoronatracker.model.User;
import org.springframework.data.repository.CrudRepository;

import java.util.Set;

public interface ContactRepository extends CrudRepository<Contact, String> {

    Contact findByPhoneHash(String phoneHash);
}
