package tk.dntree.model;

public class PermissionModel extends AbstractModel<PermissionModel> {
    private long idPerm;
    private long idRole;
    private String namePerm;
    private String codePerm;
    private boolean isPermiss;

    public long getIdPerm() {
        return idPerm;
    }

    public void setIdPerm(long idPerm) {
        this.idPerm = idPerm;
    }

    public long getIdRole() {
        return idRole;
    }

    public void setIdRole(long idRole) {
        this.idRole = idRole;
    }

    public String getNamePerm() {
        return namePerm;
    }

    public void setNamePerm(String namePerm) {
        this.namePerm = namePerm;
    }

    public String getCodePerm() {
        return codePerm;
    }

    public void setCodePerm(String codePerm) {
        this.codePerm = codePerm;
    }

    public boolean isPermiss() {
        return isPermiss;
    }

    public void setPermiss(boolean isPermiss) {
        this.isPermiss = isPermiss;
    }
}
