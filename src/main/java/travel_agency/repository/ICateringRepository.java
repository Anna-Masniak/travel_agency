package travel_agency.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import travel_agency.entities.Catering;

public interface ICateringRepository extends JpaRepository<Catering, Long> {
}
