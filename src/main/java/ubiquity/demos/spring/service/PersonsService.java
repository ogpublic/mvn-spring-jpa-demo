package ubiquity.demos.spring.service;

import ubiquity.demos.spring.domain.Person;
import ubiquity.demos.spring.repository.PersonsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

@Service
public class PersonsService {
    private PersonsRepository personsRepository;

    public Person search(String email) {
        return personsRepository.lookupByEmail(email);
    }

    public void register(Person person) {
        Person existingRecord = personsRepository.lookupByEmail(person.getEmail());

        if(existingRecord == null) {
            personsRepository.saveAndFlush(person);
        }
    }

    public List<Person> list() {
        return personsRepository.findAll();
    }

    public Person find(Integer personId) {
        AtomicReference<Person> person =  new AtomicReference<>();

        personsRepository.findById(personId).ifPresent(p -> person.set(p));

        return person.get();
    }

    @Autowired
    public void setPersonsRepository(PersonsRepository personsRepository) {
        this.personsRepository = personsRepository;
    }
}
