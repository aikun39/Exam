package scoremanager;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.School;
import bean.Subject;
import dao.SubjectDAO;

public class SubjectUpdateExecuteAction {
    private SubjectDAO subjectDAO = new SubjectDAO();

    public void execute(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String cd = req.getParameter("cd");
        String name = req.getParameter("name");
        String schoolCd = req.getParameter("schoolCd");

        School school = new School();
        school.setCd(schoolCd);

        Subject subject = new Subject();
        subject.setCd(cd);
        subject.setName(name);
        subject.setSchool(school);

        boolean success = subjectDAO.save(subject);

        if (success) {
            res.getWriter().println("Subject saved successfully.");
        } else {
            res.getWriter().println("Failed to save subject.");
        }
    }
}
