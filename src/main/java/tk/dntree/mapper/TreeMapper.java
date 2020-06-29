package tk.dntree.mapper;

import tk.dntree.model.TreeModel;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TreeMapper implements RowMapper<TreeModel> {

    @Override
    public TreeModel MapRow(ResultSet resultSet) {

        try {
            TreeModel tree = new TreeModel();
            tree.setIdTree(resultSet.getInt("Id_Tree"));
            tree.setFamilia(resultSet.getString("Familia"));
            tree.setTypeTree(resultSet.getString("Type_Tree"));
            tree.setAgeTree(resultSet.getInt("Age_Tree"));
            tree.setAddressTree(resultSet.getString("AddressTree"));
            tree.setHeight(resultSet.getDouble("Height_Tree"));
            tree.setLatitude(resultSet.getDouble("Latitude"));
            tree.setLongitude(resultSet.getDouble("Longitude"));
            tree.setStatus(resultSet.getString("Status_Tree"));
            return tree;
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;

    }

}
