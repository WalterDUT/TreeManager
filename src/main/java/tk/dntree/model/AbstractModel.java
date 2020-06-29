package tk.dntree.model;

import java.util.ArrayList;
import java.util.List;

public class AbstractModel<T> {
    private List<T> listResult = new ArrayList<>();

    public List<T> getListResult() {
        return listResult;
    }

    public void setListResult(List<T> listResult) {
        this.listResult = listResult;
    }
}
