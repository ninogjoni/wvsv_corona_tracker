package de.govhackathon.wvsvcoronatracker.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import de.ghwct.service.model.UserDto;
import de.govhackathon.wvsvcoronatracker.repositories.PositionsRepository;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import java.util.Collections;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

class Spec_UsersController {

    @Nested
    @SpringBootTest
    @AutoConfigureMockMvc(addFilters = false)
    @TestPropertySource(locations = "classpath:application-test.properties")
    @ExtendWith(SpringExtension.class)
    @WithMockUser(username = "Test", roles = "APP_USER")
    class User_Registration {

        @Autowired
        private MockMvc mockMvc;

        @Autowired
        private PositionsRepository positionsRepository;

        @Autowired
        private ObjectMapper objectMapper;

        @BeforeEach
        void setUp() {
            positionsRepository.deleteAll();
        }

        @Test
        void should_add_new_user() throws Exception {
            UserDto dto = new UserDto()
                    .name("Max")
                    .phoneHash("42")
                    .healthHistory(Collections.emptyList())
                    .token("123");

            String content = objectMapper.writeValueAsString(dto);

            this.mockMvc.perform(post("/api/v1/users")
                    .contentType(MediaType.APPLICATION_JSON)
                    .content(content))
                    .andExpect(status().isOk());
        }

        @Test
        void should_read_saved_user() throws Exception {
            UserDto dto = new UserDto()
                    .name("Max")
                    .phoneHash("42")
                    .healthHistory(Collections.emptyList())
                    .token("123");

            String content = objectMapper.writeValueAsString(dto);

            ResultActions result = this.mockMvc.perform(post("/api/v1/users")
                    .contentType(MediaType.APPLICATION_JSON)
                    .content(content))
                    .andExpect(status().isOk());
            result.andDo(mvcResult -> {
                UserDto savedItem = new ObjectMapper().readValue(mvcResult.getResponse().getContentAsString(), UserDto.class);
                Assertions.assertThat(savedItem.getToken()).isNotNull();
                this.mockMvc.perform(get("/api/v1/users/" + savedItem.getToken())
                        .contentType(MediaType.APPLICATION_JSON)
                        .content(content))
                        .andExpect(status().isOk());
            });
        }

        // error handling


        @Test
        void should_not_save_invalid_user() throws Exception {
            UserDto dto = new UserDto()
                    .name("Max")
                    .token("123");

            String content = objectMapper.writeValueAsString(dto);

            this.mockMvc.perform(post("/api/v1/users")
                    .contentType(MediaType.APPLICATION_JSON)
                    .content(content))
                    .andExpect(status().isBadRequest());
        }
    }
}