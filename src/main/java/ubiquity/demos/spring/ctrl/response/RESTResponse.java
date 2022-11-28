package ubiquity.demos.spring.ctrl.response;

import lombok.Getter;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class RESTResponse {
    private int code;
    @Getter
    private String message;
    @Getter
    private Object data;
    @Getter
    private List<String> errors = new LinkedList<>();

    public static RESTResponse of(int code, String message) {
        RESTResponse response = new RESTResponse();

        response.code = code;
        response.message = message;
        response.data = new HashMap<>();

        return response;
    }

    public static <T> RESTResponse of(int code, String message, T data) {
        RESTResponse response = new RESTResponse();

        response.code = code;
        response.message = message;
        response.data = data;

        return response;
    }

    public static RESTResponse of(int code, String message, List<String> errors) {
        RESTResponse response = new RESTResponse();

        response.code = code;
        response.message = message;
        response.data = new HashMap<>();

        if(errors != null) {
            response.errors.addAll(errors);
        }

        return response;
    }

}
