package travel_agency.entities;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@NoArgsConstructor
@Getter
@Setter
//czy trzeba tu dawać @TABLE ???

public class Catering {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    long id;
    String description;
    String name;

}
