package scoremanager;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SubjectUpdateAction {
    public void execute(HttpServletRequest req, HttpServletResponse res) throws IOException {
        // 編集画面の初期表示処理（例：JSPにforward）
        res.getWriter().println("Subject update screen (not implemented)");
    }
}
