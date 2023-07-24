package travel_agency.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import travel_agency.entities.Address;

public interface IAddressRepository extends JpaRepository<Address, Long> {
}
