package com.pablo.fruitloops.controllers;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pablo.fruitloops.models.Item;

import org.springframework.stereotype.Controller;
import java.util.ArrayList;

@Controller
public class MainController {
    @RequestMapping("/")
    public String index(Model model) {
        ArrayList<Item> fruits = new ArrayList<Item>();
        fruits.add(new Item("Kiwi", 1.5));
        fruits.add(new Item("Mango", 2.0));
        fruits.add(new Item("Berries", 4.0));
        fruits.add(new Item("Guava", 0.75));

        model.addAttribute("allFruits", fruits);
        return "index.jsp";
    }
}
