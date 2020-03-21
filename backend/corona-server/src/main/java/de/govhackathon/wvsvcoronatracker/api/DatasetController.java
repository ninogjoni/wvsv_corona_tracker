package de.govhackathon.wvsvcoronatracker.api;

import de.ghwct.service.api.DatasetApi;
import de.ghwct.service.model.PlagueDataSetDto;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;

import java.util.List;


@Component
public class DatasetController implements DatasetApi {

    @Override
    public ResponseEntity<PlagueDataSetDto> createDataset(PlagueDataSetDto plagueDataSet) {
        // TODO implement me
        return null;
    }

    @Override
    public ResponseEntity<List<PlagueDataSetDto>> getDataSets() {
        // TODO implement me
        return null;
    }

}
