package ru.netology.springdao.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.springdao.service.ServiceSpringDao;

import java.util.List;


@RestController
@RequestMapping("/products")
public class Controller {

    private ServiceSpringDao service;

    public Controller(ServiceSpringDao service) {
        this.service = service;
    }

    @GetMapping("/fetch-product")
    public List<String> fetchProduct(@RequestParam("name") String name) {
        return service.productName(name);
    }


}
