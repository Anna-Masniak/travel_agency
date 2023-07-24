package travel_agency;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import static java.lang.Class.forName;

@SpringBootApplication
public class Application {
//
    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);

    }
}
