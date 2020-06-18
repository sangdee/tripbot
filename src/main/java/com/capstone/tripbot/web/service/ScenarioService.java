package com.capstone.tripbot.web.service;

import com.capstone.tripbot.web.scenario.*;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import org.jsoup.Jsoup;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * @author : Sangji Lee
 * @see : https://github.com/sangji11
 * @since : 2020-06-13 오후 9:13
 */

@Service
@NoArgsConstructor
public class ScenarioService {

    private String url = "121.186.20.224:9893";


    public int successScenario(String userContent) {
        userContent = api("tokenize", userContent);
        String intent = api("intent", userContent);
        String[] entity = api("entity", userContent).split(" ");
        ScenarioStore.intent = intent;
        intentDivision(intent, userContent, entity);
        return 1;
    }

    public int failScenario(String userContent) {
        userContent = api("tokenize", userContent);
        String intent = ScenarioStore.intent;
        String[] entity = {String.valueOf(ScenarioStore.date), String.valueOf(ScenarioStore.location),
                String.valueOf(ScenarioStore.restaurant), String.valueOf(ScenarioStore.purpose)};
        for (int i = 1; i < api("entity", userContent).split(" ").length -1; i++) {
            String[] newEntity = api("entity", userContent).split(" ");
            entity[entity.length + i] = String.valueOf(newEntity);
        }
        intentDivision(intent, userContent, entity);
        return 1;
    }


    private String utf8(String text) throws UnsupportedEncodingException {
        return URLEncoder.encode(text, "UTF-8").replace("+", "%20");
    }

    public String api(String method, String text) {
        try {
            return Jsoup.connect(url + "/"
                    + method +
                    "?input=" + utf8(text))
                    .timeout(20000)
                    .get()
                    .body()
                    .text();
        } catch (Exception e) {
            return null;
        }
    }

    public String crawler(String intent, Map<String, String> map) {
        try {

            String crawlerUrl = url + "/" + intent + "?";
            crawlerUrl += map.entrySet()
                    .stream()
                    .map(e -> e.getKey() + "=" + e.getValue())
                    .collect(Collectors.joining("&"));

            return Jsoup.connect(crawlerUrl)
                    .timeout(20000)
                    .get()
                    .body()
                    .text();
        } catch (Exception e) {
            return null;
        }
    }

    public int intentDivision(String intent, String userContent, String[] entity) {
        if (intent.equals("먼지")) {
            return DustScenario.getInstance().answer(userContent, entity);
        } else if (intent.equals("날씨")) {
            return WeatherScenario.getInstance().answer(userContent, entity);
        } else if (intent.equals("여행지")) {
            return DestinationScenario.getInstance().answer(userContent, entity);
        } else if (intent.equals("맛집"))
            return RestaurantScenario.getInstance().answer(userContent, entity);
        return 1;
    }

}