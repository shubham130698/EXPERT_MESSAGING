package dto;

public class ReportedIncidentsByExpert {

private int id;
private String incDesc;
private String expertID;
private String customerID;
private int questionID;
private String postedDate;

    public ReportedIncidentsByExpert() {
    }

    public ReportedIncidentsByExpert(int id, String incDesc, String expertID, String customerID, 
            int questionID,String postedDate) {
        this.id = id;
        this.incDesc = incDesc;
        this.expertID = expertID;
        this.customerID = customerID;
        this.questionID = questionID;
        this.postedDate = postedDate;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIncDesc() {
        return incDesc;
    }

    public void setIncDesc(String incDesc) {
        this.incDesc = incDesc;
    }

    public String getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(String postedDate) {
        this.postedDate = postedDate;
    }

    public String getExpertID() {
        return expertID;
    }

    public void setExpertID(String expertID) {
        this.expertID = expertID;
    }

    public String getCustomerID() {
        return customerID;
    }

    public void setCustomerID(String customerID) {
        this.customerID = customerID;
    }

    public int getQuestionID() {
        return questionID;
    }

    public void setQuestionID(int questionID) {
        this.questionID = questionID;
    }
}
