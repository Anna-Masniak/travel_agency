package travel_agency.repository;

import lombok.RequiredArgsConstructor;
//import org.springframework.security.config.web.servlet.oauth2.resourceserver.OpaqueTokenDsl;
import org.springframework.stereotype.Repository;
import travel_agency.entities.Address;

import java.util.Optional;
import java.util.Set;
import java.util.stream.Collectors;

@RequiredArgsConstructor
@Repository
public class AddressRepository {

    private final IAddressRepository addressRepository;

    public void addAddress(Address address)
    {addressRepository.save(address);}

    public Set<Address> getAllAddresses(){
        return addressRepository.findAll()
                .stream()
                .collect(Collectors.toSet());
    }
  public Optional<Address> getAddressById(Long id)
  {return addressRepository.findById(id);}
}
