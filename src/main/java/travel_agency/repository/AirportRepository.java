package travel_agency.repository;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import travel_agency.entities.Airport;

import java.util.List;
import java.util.Optional;

@Repository
@RequiredArgsConstructor
public class AirportRepository
{
    private final IAirportRepository airportRepository;

public List<Airport> getAllAirports(){
    return airportRepository.findAll();
}

public void saveAirport(Airport airport) {
    airportRepository.save(airport);
}

public Optional<Airport> getAirportById(Long id)
{ return airportRepository.findById(id);}

}
