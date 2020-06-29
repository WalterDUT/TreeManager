package tk.dntree.mapper;

import tk.dntree.model.RoleModel;
import tk.dntree.model.UserModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserMapper implements RowMapper<UserModel> {

    @Override
//	public UserModel MapRow(ResultSet resultSet) {
//		try {
//			UserModel user = new UserModel();
//			user.setIdUser(resultSet.getInt("ID_user"));
//			//.....
//			return user;
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return null;
//	}
    public UserModel MapRow(ResultSet resultSet) {
        try {
            UserModel user = new UserModel();
            user.setIdUser(resultSet.getLong("ID_User"));
            user.setFullName(resultSet.getString("FullName"));
            user.setUsername(resultSet.getString("Username"));
            user.setPassWord(resultSet.getString("Password"));
            user.setStatus(resultSet.getInt("Status"));
            user.setAddress(resultSet.getString("Address"));
            user.setAge(resultSet.getInt("Age"));
            user.setPhoneNum(resultSet.getString("PhoneNum"));
            try {
                RoleModel role = new RoleModel();
                role.setNameRole(resultSet.getString("Name_Role"));
                role.setCode(resultSet.getString("Code"));
                user.setRole(role);
            } catch (Exception e) {
                // TODO: handle exception
                System.out.print(e.getMessage());
            }

            // .....
            return user;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
    }

}
