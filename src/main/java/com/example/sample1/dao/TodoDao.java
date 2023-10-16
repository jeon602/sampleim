package com.example.sample1.dao;

import com.example.sample1.domain.Todo;
import org.springframework.stereotype.Component;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class TodoDao {
    @Component
    public class TodoDao{

    }

    public List<Todo> list()throws Exception{
        String sql = "SELECT * FROM todo ORDER BY id DESC";
        Connection connection = dataSource.getConnection;
        Statement statement = connection.createStatement();
        ResultSet resultSet = statement.executeQuery(sql);
        List <Todo> list= new ArrayList<>();
        (connection; statement;);


        return null;
    }
    public void insert(Todo todo) {
    }
}
