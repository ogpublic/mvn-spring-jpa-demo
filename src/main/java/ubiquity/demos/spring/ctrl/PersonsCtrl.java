package ubiquity.demos.spring.ctrl;

import ubiquity.demos.spring.ctrl.response.RESTResponse;
import ubiquity.demos.spring.domain.Person;
import ubiquity.demos.spring.service.PersonsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import static javax.servlet.http.HttpServletResponse.*;

@Controller
public class PersonsCtrl {
    private PersonsService personsService;

    @PutMapping(name = "Register", path = "/register", produces = MediaType.APPLICATION_JSON_VALUE)
    public RESTResponse register(@RequestBody Person person) {
        RESTResponse response = RESTResponse.of(SC_OK, "Operation completed successfully!");

        List<String> errors = new LinkedList<>();

        if(person.getName() == null || person.getName().trim().length() == 0) {
            errors.add("Invalid new record name: NULL  or empty!");
        }

        if(person.getEmail() == null || person.getEmail().trim().length() == 0) {
            errors.add("Invalid new record email: NULL  or empty!");
        }

        if(!errors.isEmpty()) {
            response = RESTResponse.of(SC_BAD_REQUEST, "Request validation failed, please see the response for additional information.",errors);
        } else {
            try {
                personsService.register(person);
            } catch(Exception e) {
                response = RESTResponse.of(SC_INTERNAL_SERVER_ERROR, "Operation execution failed due to -> " + e.getMessage());
            }
        }

        return response;
    }

    @GetMapping(name = "List Persons", path = "/list", produces = MediaType.APPLICATION_JSON_VALUE)
    public RESTResponse list() {
        List<Person> persons = personsService.list();

        List<Map<String, Object>> result = new LinkedList<>();

        persons.forEach(p -> {
            Map<String, Object> record = new HashMap<>();

            record.put("id", p.getId());
            record.put("name", p.getName());
            record.put("email", p.getEmail());

            result.add(record);
        });

        return RESTResponse.of(200, "Existing records -> " + result.size(), result);
    }

    @GetMapping(name = "Get person record", path = "/retrieve/{personId}", produces = MediaType.APPLICATION_JSON_VALUE)
    public RESTResponse read(@PathVariable(value = "personId") Integer personId) {
        Person person = personsService.find(personId);

        RESTResponse response = RESTResponse.of(SC_NO_CONTENT, "No person with ID [" + personId + "] was found in our records!");

        return createResponseEntity(person, response);
    }

    @PostMapping(name = "Search person by email", path = "/search", produces = MediaType.APPLICATION_JSON_VALUE)
    public RESTResponse search(@RequestBody String email) {
        Person person = personsService.search(email);

        RESTResponse response = RESTResponse.of(SC_NO_CONTENT, "No person has been found matching your search criteria in our records!");

        return createResponseEntity(person, response);
    }

    private RESTResponse createResponseEntity(Person person, RESTResponse response) {
        if(person != null) {
            Map<String, Object> record = new HashMap<>();

            record.put("id", person.getId());
            record.put("name", person.getName());
            record.put("email", person.getEmail());

            response = RESTResponse.of(SC_OK, "Existing record found!", record);
        }

        return response;
    }

    @Autowired
    public void setPersonsService(PersonsService personsService) {
        this.personsService = personsService;
    }
}
