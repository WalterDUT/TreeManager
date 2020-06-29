package tk.dntree.service.impl;

import tk.dntree.dao.ITreeDAO;
import tk.dntree.model.TreeModel;
import tk.dntree.service.ITreeService;

import javax.inject.Inject;
import java.util.List;

public class TreeService implements ITreeService {

    @Inject
    private ITreeDAO treeDAO;

    public List<TreeModel> findAll() {
        return treeDAO.findAll();
    }

    @Override
    public TreeModel save(TreeModel tree) {
        Long treeId = treeDAO.save(tree);
        return treeDAO.findOneBy(treeId);
    }

    @Override
    public TreeModel update(TreeModel updateTree) {
        // TreeModel oldTree= treeDAO.findOneBy(updateTree.getIdTree());
        treeDAO.update(updateTree);
        return treeDAO.findOneBy(updateTree.getIdTree());
    }

	@Override
	public TreeModel delete(TreeModel deleteTree) {
		// TODO Auto-generated method stub
		return null;
	}
}
