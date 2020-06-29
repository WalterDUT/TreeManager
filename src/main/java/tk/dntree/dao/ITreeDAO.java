package tk.dntree.dao;

import tk.dntree.model.TreeModel;

import java.util.List;

public interface ITreeDAO extends GenericDAO<TreeModel> {
    List<TreeModel> findAll();

    Long save(TreeModel tree);

    void update(TreeModel tree);

    TreeModel findOneBy(Long id);
}
