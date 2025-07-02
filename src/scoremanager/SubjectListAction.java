package scoremanager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.School;
import bean.Subject;
import dao.SubjectDAO;

public class SubjectListAction {
    private SubjectDAO subjectDao = new SubjectDAO();

    public void execute(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // ※ 実際はログイン中の先生の school を取得するのが理想
        // 仮の School インスタンス（コードのみ）
        School school = new School();
        school.setCd("S001");

        // 科目一覧を取得
        List<Subject> subjects = subjectDAO.filter(school);

        // JSP に渡す
        req.setAttribute("subjects", subjects);

        // 一覧表示 JSP にフォワード
        RequestDispatcher dispatcher = req.getRequestDispatcher("/subject_list.jsp");
        dispatcher.forward(req, res);
    }
}
