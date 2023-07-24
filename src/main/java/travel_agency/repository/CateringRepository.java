package travel_agency.repository;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import travel_agency.entities.Catering;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class CateringRepository {

    private final ICateringRepository cateringRepository;

    public List<Catering> getAllCaterings()
    {return cateringRepository.findAll();}


}
