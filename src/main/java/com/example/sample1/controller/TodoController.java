package com.example.sample1.controller;

import com.example.sample1.domain.Todo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.sql.DataSource;

@Controller
public class TodoController {
    @Autowired
    private DataSource dataSource;

    @GetMapping
    public String home(Model model) throws Exception{
        List<Todo>list = ti

    }


}
