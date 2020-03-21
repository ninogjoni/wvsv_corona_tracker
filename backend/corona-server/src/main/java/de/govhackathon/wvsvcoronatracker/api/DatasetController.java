package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.api.DatasetApi;
import de.ghwct.service.model.PlagueDataSet;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class DatasetController implements DatasetApi {

    @Override
    public ResponseEntity<PlagueDataSet> createDataset(PlagueDataSet plagueDataSet) {
        // TODO implement me
        return null;
    }

    @Override
    public ResponseEntity<List<PlagueDataSet>> getDataSets() {
        // TODO implement me
        return null;
    }

}
