package tk.dntree.service;

import tk.dntree.model.UserModel;

import java.util.List;

public interface IUserService {
    List<UserModel> findAll();

    UserModel FindByUsernameAndPasswordAndStatus(String username, String password, Integer status);
}
