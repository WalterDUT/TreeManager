package tk.dntree.service;

import tk.dntree.model.TreeModel;

import java.util.List;

public interface ITreeService {
    List<TreeModel> findAll();

    TreeModel save(TreeModel tree);

    TreeModel update(TreeModel updateTree);
    
    TreeModel delete(TreeModel deleteTree);
}
