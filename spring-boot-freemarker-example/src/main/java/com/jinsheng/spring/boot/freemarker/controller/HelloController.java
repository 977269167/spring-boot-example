package com.jinsheng.spring.boot.freemarker.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author jinsheng
 */
@Controller
public class HelloController {

    @RequestMapping("/hello")
    public String hello(Model model) {
        model.addAttribute("name", "team");
        return "hello";
    }

    @RequestMapping("/hello2")
    public String hello(ModelMap modelMap) {
        modelMap.addAttribute("name", "team");
        return "hello";
    }

    @RequestMapping("/hello3")
    public ModelAndView hello(ModelAndView modelAndView) {
        modelAndView.setViewName("hello");
        modelAndView.addObject("name", "team");
        return modelAndView;
    }
}
