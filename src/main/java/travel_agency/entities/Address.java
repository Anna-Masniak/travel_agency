package travel_agency.entities;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
// czemu nie ma Getterów i setterów ?????
@Data
@NoArgsConstructor
@Table(name= "addresses")

public class Address {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    long id;
    String name;

    @Transient
// Ta adnotacja określa, że właściwość lub pole nie jest trwałe.
// Służy do dodawania adnotacji do właściwości lub pola klasy encji,
// zamapowanej nadklasy lub klasy osadzonej.
String number;
    String postalCode;
    String city;
    String continent;
    // w bazie danych w tabeli ADRES nie ma kraju dlatego tutaj brak:
    // String country

    public Address(Long id, String name, String number, String postalCode, String city, String continent){
this.name = name;
this.number = number;
this.postalCode = postalCode;
this.city = city;
this.continent = continent;



    }



}
