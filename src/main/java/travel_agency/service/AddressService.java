package travel_agency.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import travel_agency.entities.Address;
import travel_agency.exceptions.AddressNotFoundException;
import travel_agency.repository.AddressRepository;

import java.util.Set;

@Service
@RequiredArgsConstructor
public class AddressService {

    private final AddressRepository addressRepository;

    public void addAddress (Address address)
    {addressRepository.addAddress(address);}

    public Set<Address> getAllAddresses()
    {return addressRepository.getAllAddresses();}

    public Address getAddressById(Long id){
        return addressRepository
                .getAddressById(id)
                .orElseThrow(() -> new AddressNotFoundException("Address with this id doesn't exist"));
    }
}
