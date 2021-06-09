package dto;

public class Expert {

private String id;
private String password;
private boolean blocked;
private int categoryID;
private int subCategoryID;

    public Expert(String id, String password) {
        this.id = id;
        this.password = password;
    }

    public Expert() {
    }

    public Expert(String id, String password, boolean blocked, int categoryID, int subCategoryID) {
        this.id = id;
        this.password = password;
        this.blocked = blocked;
        this.categoryID = categoryID;
        this.subCategoryID = subCategoryID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isBlocked() {
        return blocked;
    }

    public void setBlocked(boolean blocked) {
        this.blocked = blocked;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public int getSubCategoryID() {
        return subCategoryID;
    }

    public void setSubCategoryID(int subCategoryID) {
        this.subCategoryID = subCategoryID;
    }


}
