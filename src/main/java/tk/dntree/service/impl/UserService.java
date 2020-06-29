package tk.dntree.service.impl;

import tk.dntree.dao.IUserDAO;
import tk.dntree.model.UserModel;
import tk.dntree.service.IUserService;

import javax.inject.Inject;
import java.util.List;

public class UserService implements IUserService {

    @Inject
    private IUserDAO userDAO;

    @Override
    public List<UserModel> findAll() {
        // TODO Auto-generated method stub
        return userDAO.findAll();
    }

    @Override
    public UserModel FindByUsernameAndPasswordAndStatus(String username, String password, Integer status) {
        // TODO Auto-generated method stub
        return userDAO.FindByUsernameAndPasswordAndStatus(username, password, status);
    }

}
