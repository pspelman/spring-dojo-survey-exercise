package com.philspelman.springdojosurveyexercise.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;

@Controller
public class MainController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(HttpSession session, Model model) {
        System.out.println("reached the index...use a session...yay");

        if (session.getAttribute("name") == null) {
            session.setAttribute("name", "undefined");
        }

        model.addAttribute("message", "Welcome to the user form...this is a message");
        return "index";
    }

    @RequestMapping(value = "/submit", method = RequestMethod.POST)
    public String submit(HttpSession session,
                         @RequestParam(value = "name", defaultValue = "na")String name,
                         @RequestParam(value = "dojo", defaultValue = "SanJose")String dojo,
                         @RequestParam(value = "fave_lang", defaultValue = "Silent")String fave_lang,
                         @RequestParam(value = "comment", defaultValue = "")String comment, Model model) {

        System.out.println("got POST request to the /submit page");


        model.addAttribute("name", name);
        model.addAttribute("dojo", dojo);
        model.addAttribute("fave_lang", fave_lang);
        model.addAttribute("comment", comment);

        System.out.println("name: " + name);
        System.out.println("dojo: " + dojo);
        System.out.println("fave_lang: " + fave_lang);
        System.out.println("comment: " + comment);

        System.out.println("Trying to print attribute names:" + session.getAttributeNames());
        Enumeration keys = session.getAttributeNames();
        while (keys.hasMoreElements()) {
            String key = (String) keys.nextElement();
            System.out.println(key + " : " + session.getAttribute(key));
        }


        return "results";
    }

}
