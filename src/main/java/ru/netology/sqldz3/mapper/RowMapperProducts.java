package ru.netology.sqldz3.mapper;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class RowMapperProducts implements RowMapper<Products> {

    @Override
    public Products mapRow(ResultSet rs, int rowNum) throws SQLException {
        return new Products(rs.getString("product_name"));
    }
}
