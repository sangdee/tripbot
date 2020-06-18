package com.capstone.tripbot.web.scenario;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author : Sangji Lee
 * @see : https://github.com/sangji11
 * @since : 2020-06-14 오전 1:32
 */
public class WeatherScenario extends Scenario {
    private static WeatherScenario instance;

    private WeatherScenario() {
    }

    public static WeatherScenario getInstance() {
        if (instance == null) {
            synchronized (instance) {
                if (instance == null) {
                    instance = new WeatherScenario();
                }
                return instance;
            }
        }
        return instance;
    }
    @Override
    public int answer(String userContent, String[] entity) {
        String[] userToken = userContent.split(" ");
        ScenarioStore.date = new ArrayList<>();
        ScenarioStore.location = new ArrayList<>();

        for (int i = 0; i < entity.length; i++) {
            if(entity[i].contains("DATE"))
                ScenarioStore.date.add(userToken[i]);

            else if(entity[i].contains("LOCATION"))
                ScenarioStore.location.add(userToken[i]);
        }

        if (ScenarioStore.date.isEmpty()) {
            ScenarioStore.date.add("오늘");
        }

        if(ScenarioStore.location.isEmpty()){
            ScenarioStore.answer = "어느 지역을 말씀해드릴까요?";
            return 0;
        }

        String locations = ScenarioStore.location
                .stream()
                .collect(Collectors.joining(" "));

        String dates = ScenarioStore.date
                .stream()
                .collect(Collectors.joining(" "));


        return 1;
    }
}
