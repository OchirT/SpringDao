package ru.netology.springdao.service;

import org.springframework.stereotype.Service;
import ru.netology.springdao.repository.RepositorySpringDao;

import java.util.List;

@Service
public class ServiceSpringDao {

    private RepositorySpringDao repository;

    public ServiceSpringDao(RepositorySpringDao repository) {
        this.repository = repository;
    }

    public List<String> productName(String name){
        return repository.getProductName(name);
    }
}
