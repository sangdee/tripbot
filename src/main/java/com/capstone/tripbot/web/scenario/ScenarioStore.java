package com.capstone.tripbot.web.scenario;

import java.util.ArrayList;
import java.util.List;

/**
 * @author : Sangji Lee
 * @see : https://github.com/sangji11
 * @since : 2020-06-14 오전 3:02
 */
public class ScenarioStore {
    public static String answer = "";
    public static String intent = "";
    public static List<String> date = new ArrayList<>();
    public static List<String> location = new ArrayList<>();
    public static List<String> restaurant = new ArrayList<>();
    public static List<String> purpose = new ArrayList<>();

    public static void clearAll() {
        date.clear();
        location.clear();
        restaurant.clear();
        purpose.clear();
    }
}
