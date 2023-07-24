package travel_agency.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import travel_agency.entities.Airport;

public interface IAirportRepository extends JpaRepository<Airport, Long> {
}
