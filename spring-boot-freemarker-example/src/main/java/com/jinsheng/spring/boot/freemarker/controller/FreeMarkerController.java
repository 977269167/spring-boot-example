package com.jinsheng.spring.boot.freemarker.controller;

import com.jinsheng.spring.boot.freemarker.directive.UpperDirective;
import com.jinsheng.spring.boot.freemarker.method.IndexOfMethod;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author jinsheng
 */
@Controller
public class FreeMarkerController {
    @RequestMapping("/built-in")
    public String builtIn() {
        return "built_in";
    }

    @RequestMapping("/calculation")
    public String calculation() {
        return "calculation";
    }

    @RequestMapping("/method")
    public String method(Model model) {
        model.addAttribute("indexOf", new IndexOfMethod());
        return "method";
    }

    @RequestMapping("/missing")
    public String missing() {
        return "missing";
    }

    @RequestMapping("/macroes")
    public String macroes() {
        return "macroes";
    }

    @RequestMapping("/variables")
    public String variables() {
        return "variables";
    }

    @RequestMapping("/directive")
    public String directive(Model model) {
        model.addAttribute("upper", new UpperDirective());
        return "directive";
    }
}
