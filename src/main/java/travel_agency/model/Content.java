package travel_agency.model;

import travel_agency.entities.Airport;
import travel_agency.entities.Hotel;

import java.time.LocalDateTime;

public record Content (
    Integer id,
    Category category,
    String country,
    String continent,
    String city,
    String name,
    String description,
    Double price,
    Integer vacancy,
    String image_url,
    LocalDateTime dateCreated,
    LocalDateTime dateUpdated,
    Boolean active,
    Boolean promoted,
    Boolean last_minute
    //Airport airport,
    //Hotel hotel
){
}
