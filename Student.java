package StudentAdmission;

public class Student {
    private String name;
    private String course;
    private String email;
    private String password;
    private String dob;
    private String comments;

    public Student(String name, String course, String email, String password, String dob, String comments) {
        this.name = name;
        this.course = course;
        this.email = email;
        this.password = password;
        this.dob = dob;
        this.comments = this.comments;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }
}
