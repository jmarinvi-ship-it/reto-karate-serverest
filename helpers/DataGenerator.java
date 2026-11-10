package helpers;

import java.util.UUID;

public class DataGenerator {

    public static String getRandomEmail() {
        return "qa_user_" + UUID.randomUUID().toString().substring(0, 8) + "@test.com";
    }
}