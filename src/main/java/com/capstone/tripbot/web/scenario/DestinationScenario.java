package com.capstone.tripbot.web.scenario;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @author : Sangji Lee
 * @see : https://github.com/sangji11
 * @since : 2020-06-14 오전 1:33
 */
public class DestinationScenario extends Scenario {
    private static DestinationScenario instance;

    private DestinationScenario() {
    }

    public static DestinationScenario getInstance() {
        if (instance == null) {
            synchronized (instance) {
                if (instance == null) {
                    instance = new DestinationScenario();
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
        ScenarioStore.purpose = new ArrayList<>();

        for (int i = 0; i < entity.length; i++) {
            if (entity[i].contains("DATE"))
                ScenarioStore.date.add(userToken[i]);

            else if (entity[i].contains("LOCATION"))
                ScenarioStore.location.add(userToken[i]);

            else if (entity[i].contains("PURPOSE"))
                ScenarioStore.purpose.add(userToken[i]);
        }
        if (ScenarioStore.location.isEmpty() && ScenarioStore.purpose.isEmpty()) {
            ScenarioStore.answer = "지역 정보나 목적을 추가적으로 입력해주세요";
            return 0;
        }
        String locations = ScenarioStore.location
                .stream()
                .collect(Collectors.joining(" "));

        String dates = ScenarioStore.date
                .stream()
                .collect(Collectors.joining(" "));
        String puposes = ScenarioStore.purpose
                .stream()
                .collect(Collectors.joining(" "));


        // 크롤러 호출

        ScenarioStore.clearAll();


        return 1;
    }
}
