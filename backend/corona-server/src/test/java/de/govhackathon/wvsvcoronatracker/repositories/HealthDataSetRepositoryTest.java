package de.govhackathon.wvsvcoronatracker.repositories;

import de.govhackathon.wvsvcoronatracker.model.HealthDataSet;
import de.govhackathon.wvsvcoronatracker.model.MedicalState;
import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.time.OffsetDateTime;
import java.util.List;

@ExtendWith(SpringExtension.class)
@DataJpaTest
public class HealthDataSetRepositoryTest {

    @Autowired
    private TestEntityManager entityManager;

    @Autowired
    private HealthDataSetRepository repository;

    @BeforeEach
    public void before(){
        entityManager.clear();
    }

    @Test
    public void testFindByMedicalStateAndCreationDateBetween(){
        OffsetDateTime now = OffsetDateTime.now();
        OffsetDateTime earlier = now.minusDays(2);
        OffsetDateTime later = now.plusDays(3);
        OffsetDateTime earliest = now.minusDays(10);

        HealthDataSet healthDataSet1 = createByStateAndTimeStamp(MedicalState.INFECTED,now);
        HealthDataSet healthDataSet2 = createByStateAndTimeStamp(MedicalState.INFECTED,earlier);
        HealthDataSet healthDataSet3 = createByStateAndTimeStamp(MedicalState.INFECTED,later);
        HealthDataSet healthDataSet4 = createByStateAndTimeStamp(MedicalState.INFECTED,earliest);

        List<HealthDataSet> actual = repository.findByMedicalStateAndCreationDateBetween(MedicalState.INFECTED,earlier,later);

        Assertions.assertThat(actual).contains(healthDataSet1,healthDataSet2,healthDataSet3).doesNotContain(healthDataSet4);
    }

    private HealthDataSet createByStateAndTimeStamp(MedicalState state, OffsetDateTime timestamp){
        HealthDataSet healthDataSet = new HealthDataSet();
        healthDataSet.setCreationDate(timestamp);
        healthDataSet.setMedicalState(state);
        entityManager.persist(healthDataSet);
        return healthDataSet;
    }
}
