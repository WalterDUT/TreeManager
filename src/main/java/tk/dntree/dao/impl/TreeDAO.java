package tk.dntree.dao.impl;

import tk.dntree.dao.ITreeDAO;
import tk.dntree.mapper.TreeMapper;
import tk.dntree.model.TreeModel;

import java.util.List;

import com.mysql.cj.x.protobuf.MysqlxCrud.Delete;

public class TreeDAO extends AbstractDAO<TreeModel> implements ITreeDAO {

	@Override
	public List<TreeModel> findAll() {
		String sqlStmt = "SELECT * FROM student.tree;";
		return query(sqlStmt, new TreeMapper());
	}

	@Override
	public Long save(TreeModel tree) {
		String sqlStmt = "INSERT INTO `student`.`tree` (`Familia`, `Type_Tree`, `Latitude`, `Longitude`, `AddressTree`, `Height_Tree`, `Age_Tree`, `Status_Tree`)"
				+ " values(?,?,?,?,?,?,?,?)";
		return insert(sqlStmt, tree.getFamilia(), tree.getTypeTree(), tree.getLatitude(), tree.getLongitude(),
				tree.getAddressTree(), tree.getHeight(), tree.getAgeTree(), tree.getStatus());
	}

	@Override
	public void update(TreeModel tree) {
		String sqlStmt = "UPDATE `student`.`tree`"
				+ "`Familia` = ? , `Type_Tree` = ? , `Latitude` = ? , `Longitude` = ? , `AddressTree` = ? , `Height_Tree` = ? , `Age_Tree` = ? , `Status_Tree` = ? "
				+ "WHERE (`Id_Tree` = ? );";
		update(sqlStmt, tree.getFamilia(), tree.getTypeTree(), tree.getLatitude(), tree.getLongitude(),
				tree.getAddressTree(), tree.getHeight(), tree.getAgeTree(), tree.getStatus(), tree.getIdTree());
	}

//	@Override
//	public void delete(TreeModel tree) {
//		String sqlStmt = "DELETE FROM `student`.`tree` WHERE (`Id_Tree` = ?);";
//		delete(sqlStmt, tree.getIdTree());
//	}

	@Override
	public TreeModel findOneBy(Long id) {
		String sql = "select * from cayxanh where MaCay = ?";
		List<TreeModel> tree = query(sql, new TreeMapper(), id);
		return tree.isEmpty() ? null : tree.get(0);
	}

}
