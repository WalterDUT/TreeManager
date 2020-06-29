package tk.dntree.mapper;

import java.sql.ResultSet;

public interface RowMapper<T> {
    T MapRow(ResultSet resultSet);
}
