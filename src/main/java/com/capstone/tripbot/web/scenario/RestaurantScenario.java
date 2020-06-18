package com.capstone.tripbot.web.scenario;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author : Sangji Lee
 * @see : https://github.com/sangji11
 * @since : 2020-06-14 오전 1:34
 */
public class RestaurantScenario extends Scenario {
    private static RestaurantScenario instance;

    private RestaurantScenario() {
    }

    public static RestaurantScenario getInstance() {
        if (instance == null) {
            synchronized (instance) {
                if (instance == null) {
                    instance = new RestaurantScenario();
                }
                return instance;
            }
        }
        return instance;
    }

    @Override
    public int answer(String userContent, String[] entity) {
        String[] userToken = userContent.split(" ");
        ScenarioStore.location = new ArrayList<>();
        ScenarioStore.restaurant = new ArrayList<>();


        for (int i = 0; i < entity.length; i++) {
            if (entity[i].contains("LOCATION"))
                ScenarioStore.location.add(userToken[i]);
            else if (entity[i].contains("RESTAURANT"))
                ScenarioStore.restaurant.add(userToken[i]);
        }
        if (ScenarioStore.location.isEmpty() && ScenarioStore.restaurant.isEmpty()) {
            ScenarioStore.answer = "지역 정보나 음식 정보를 추가적으로 입력해주세요";
            return 0;
        }
        String locations = ScenarioStore.location
                .stream()
                .collect(Collectors.joining(" "));

        String restaurants = ScenarioStore.restaurant
                .stream()
                .collect(Collectors.joining(" "));

        // 크롤러 호출

        ScenarioStore.clearAll();
        return 1;
    }
}
