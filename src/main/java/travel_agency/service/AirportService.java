package travel_agency.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import travel_agency.entities.Airport;
import travel_agency.exceptions.AirportNotFoundException;
import travel_agency.repository.AirportRepository;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AirportService {
    private final AirportRepository airportRepository;

    public List<Airport> getAllAirports()
    {return airportRepository.getAllAirports();}

    public void saveAirport(Airport airport)
    {airportRepository.saveAirport(airport);}

    public Airport getAirportById(Long id) {
        return airportRepository
                .getAirportById(id)
                .orElseThrow(() -> new AirportNotFoundException("Airport with this id doesnt exist"));
    }
}
