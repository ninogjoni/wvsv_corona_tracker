package de.govhackathon.wvsvcoronatracker.services;

import de.govhackathon.wvsvcoronatracker.model.Contact;
import de.govhackathon.wvsvcoronatracker.model.HealthDataSet;
import de.govhackathon.wvsvcoronatracker.model.User;
import de.govhackathon.wvsvcoronatracker.repositories.ContactRepository;
import de.govhackathon.wvsvcoronatracker.repositories.UserRepository;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.Collections;

import static org.assertj.core.api.Assertions.assertThat;

@SpringBootTest
@ExtendWith(SpringExtension.class)
@TestPropertySource(locations = "classpath:application-test.properties")
class Spec_UsersService {

    @Autowired
    private UsersService usersService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private ContactRepository contactRepository;

    @BeforeEach
    void setUp() {
        userRepository.deleteAll();
        contactRepository.deleteAll();
    }

    @Nested
    class Users {

        @Test
        void should_add_new_user() throws Exception {
            User user = User.builder()
                    .contactDetails(Contact.builder().name("Max").phoneHash("42").build())
                    .healthDataSetList(Collections.singleton(
                            HealthDataSet.builder().build()
                    ))
                    .token("123")
                    .build();

            User savedUser = usersService.createUser(user);
            assertThat(savedUser).isNotNull();
            assertThat(savedUser.getToken()).isNotNull();
        }
    }

    @Nested
    class Friends {

        @Test
        void should_add_new_user_with_friends() throws Exception {
            User user = User.builder()
                    .contactDetails(Contact.builder().name("Max").phoneHash("42").build())
                    .healthDataSetList(Collections.singleton(
                            HealthDataSet.builder().build()
                    ))
                    .friends(Collections.singleton(
                            Contact.builder()
                                    .name("Tim")
                                    .phoneHash("23")
                                    .build()
                    ))
                    .token("123")
                    .build();

            User savedUser = usersService.createUser(user);
            Contact friend = contactRepository.findByPhoneHash("23");
            assertThat(savedUser).isNotNull();
            assertThat(savedUser.getToken()).isNotNull();
            assertThat(savedUser.getFriends()).isNotNull();
            assertThat(friend).isNotNull();
        }

        @Test
        void should_update_user_with_friends() throws Exception {
            User user = User.builder()
                    .contactDetails(Contact.builder().name("Max").phoneHash("42").build())
                    .healthDataSetList(Collections.singleton(
                            HealthDataSet.builder().build()
                    ))
                    .token("123")
                    .build();

            User savedUser = usersService.createUser(user);
            assertThat(savedUser).isNotNull();
            assertThat(savedUser.getToken()).isNotNull();
            assertThat(savedUser.getFriends()).isNull();
            // update
            savedUser.setFriends(Collections.singleton(
                    Contact.builder()
                            .name("Tim")
                            .phoneHash("23")
                            .build()
            ));
            savedUser = usersService.updateUser(savedUser);
            Contact friend = contactRepository.findByPhoneHash("23");
            assertThat(savedUser).isNotNull();
            assertThat(savedUser.getToken()).isNotNull();
            assertThat(friend).isNotNull();
        }
    }

}