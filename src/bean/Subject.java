package bean;

public class Subject {
    private String cd;
    private String name;
    private School school;

    // ★このメソッドが必要
    public void setCd(String cd) {
        this.cd = cd;
    }

    public String getCd() {
        return cd;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setSchool(School school) {
        this.school = school;
    }

    public School getSchool() {
        return school;
    }
}
