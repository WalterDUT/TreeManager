package tk.dntree.dao;

import tk.dntree.model.UserModel;

import java.util.List;

public interface IUserDAO extends GenericDAO<UserModel> {
    List<UserModel> findAll();

    UserModel FindByUsernameAndPasswordAndStatus(String username, String password, Integer status);
}
