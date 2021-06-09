package dto;

public class Answer {

private int id;
private String ansDesc;
private String postedDate;
private int questionID;
private String expertID;



    public Answer() {
    }

    public Answer(int id, String ansDesc, String postedDate, int questionID, String expertID) {
        this.id = id;
        this.ansDesc = ansDesc;
        this.postedDate = postedDate;
        this.questionID = questionID;
        this.expertID = expertID;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAnsDesc() {
        return ansDesc;
    }

    public void setAnsDesc(String ansDesc) {
        this.ansDesc = ansDesc;
    }

    public String getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(String postedDate) {
        this.postedDate = postedDate;
    }

    public int getQuestionID() {
        return questionID;
    }

    public void setQuestionID(int questionID) {
        this.questionID = questionID;
    }

    public String getExpertID() {
        return expertID;
    }

    public void setExpertID(String expertID) {
        this.expertID = expertID;
    }


}
