package travel_agency.entities;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
@NoArgsConstructor
@Getter
@Setter
public class Offer_category {

    @Id
    @GeneratedValue
    long id;

    String name;
    String offerDescription;
    // offer description:
    //objazdówka / Wypoczynek na plaży / Dla aktywnych / Romantyczne chwile
}
