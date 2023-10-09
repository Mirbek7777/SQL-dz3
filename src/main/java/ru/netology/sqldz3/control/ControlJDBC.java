package ru.netology.sqldz3.control;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import ru.netology.sqldz3.mapper.Products;
import ru.netology.sqldz3.repository.RepositoryJDBC;

import java.util.List;

@RestController
public class ControlJDBC {

    private final RepositoryJDBC repositoryJDBC;

    public ControlJDBC(RepositoryJDBC repositoryJDBC) {
        this.repositoryJDBC = repositoryJDBC;
    }

    @GetMapping("/products/fetch-product")
    public List<Products> getSqlSetup(@RequestParam String name) {
        return repositoryJDBC.getProductName(name);
    }
    @PostMapping("/post")
    public List<Products> getSqlSetups(@RequestParam String name) {
        return repositoryJDBC.getProductName(name);
    }
}
