package dto;

public class Question {

private int id;
private String questionTitle;
private String questionDesc;
private String postedDate;
private boolean status;
private boolean visibility;
private int categoryID;
private int subCategoryID;
private String customerID;
private String expertID;

    public Question() {
    }

    public Question(int id, String questionTitle, String questionDesc, String postedDate, boolean status, boolean visibility, int categoryID, int subCategoryID, String customerID, String expertID) {
        this.id = id;
        this.questionTitle = questionTitle;
        this.questionDesc = questionDesc;
        this.postedDate = postedDate;
        this.status = status;
        this.visibility = visibility;
        this.categoryID = categoryID;
        this.subCategoryID = subCategoryID;
        this.customerID = customerID;
        this.expertID = expertID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestionTitle() {
        return questionTitle;
    }

    public void setQuestionTitle(String questionTitle) {
        this.questionTitle = questionTitle;
    }

    
    public String getQuestionDesc() {
        return questionDesc;
    }

    public void setQuestionDesc(String questionDesc) {
        this.questionDesc = questionDesc;
    }

    public String getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(String postedDate) {
        this.postedDate = postedDate;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public boolean isVisibility() {
        return visibility;
    }

    public void setVisibility(boolean visibility) {
        this.visibility = visibility;
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

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public String getExpertID() {
        return expertID;
    }

    public void setExpertID(String expertID) {
        this.expertID = expertID;
    }
}
