package tk.dntree.dao.impl;

import tk.dntree.dao.IUserDAO;
import tk.dntree.mapper.UserMapper;
import tk.dntree.model.UserModel;

import java.util.List;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {

    @Override
    public List<UserModel> findAll() {
        String sqlStmt = "SELECT * FROM student.user";
        return query(sqlStmt, new UserMapper());
    }

    public UserModel FindByUsernameAndPasswordAndStatus(String username, String password, Integer status) {
        StringBuilder sql = new StringBuilder("SELECT * FROM user AS u ");
        sql.append("inner join role as r on r.Id_Role = u.Id_Role");
        sql.append(" where Username = ? and Password = ? and Status = ?");
        List<UserModel> users = query(sql.toString(), new UserMapper(), username, password, status);

        return users.isEmpty() ? null : users.get(0);
    }

}