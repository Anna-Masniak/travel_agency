package travel_agency.repository;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PostMapping;
import travel_agency.model.Category;
import travel_agency.model.Content;

import javax.annotation.PostConstruct;
import java.security.PublicKey;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import static org.springframework.data.jpa.domain.AbstractPersistable_.id;

@Repository
public class ContentCollectionRepository {
    private final List<Content> content = new ArrayList<>();

    public ContentCollectionRepository() {

    }

    public List<Content> findAll() {
        return content;
    }

    public Optional<Content> findById(Integer id) {
        return content.stream().filter(c -> c.id().equals(id)).findFirst();
    }

    @PostConstruct
    private void init() {
        Content c = new Content(1, Category.SAFARI, "Kongo", "Africa","Kinszasa",
                "Na szlaku Bonobo","Kongo to  jedno z najciekawszych państw Afryki. Pierwotne lasy, dżungla, góry, wodospady i sawanny. Podczas naszej wyprawy zobaczymy: Pięć Parków Narodowych, słonie, goryle, szympansy, liczne pantery, mandryle, koczkodany, hipopotamy i wiele innych",
                14899.00, 6,"https://yellowzebrasafaris.com/media/35296/congo-walking.jpg?anchor=center&mode=crop&width=960&height=550&format=webp&quality=70&rnd=131635222380000000",
                LocalDateTime.now(), null, true, true, false);  //"Congo Airport", "Jungle")

        content.add(c);
    }
}
