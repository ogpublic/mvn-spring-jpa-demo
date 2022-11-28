package ubiquity.demos.spring.repository;

import ubiquity.demos.spring.domain.Person;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface PersonsRepository extends JpaRepository<Person, Integer> {
    @Query(value="SELECT p FROM Person p WHERE p.email=:email")
    Person lookupByEmail(@Param("email") String email);
}
