package dao;

import java.util.ArrayList;
import java.util.List;

import bean.School;
import bean.Subject;

public class SubjectDao {
    private static List<Subject> subjects = new ArrayList<>();

    public Subject get(String cd, School school) {
        for (Subject s : subjects) {
            if (s.getCd().equals(cd) && s.getSchool().equals(school)) {
                return s;
            }
        }
        return null;
    }

    public List<Subject> filter(School school) {
        List<Subject> result = new ArrayList<>();
        for (Subject s : subjects) {
            if (s.getSchool().equals(school)) {
                result.add(s);
            }
        }
        return result;
    }

    public boolean save(Subject subject) {
        // 上書き保存処理
        Subject existing = get(subject.getCd(), subject.getSchool());
        if (existing != null) {
            subjects.remove(existing);
        }
        return subjects.add(subject);
    }

    public boolean delete(Subject subject) {
        return subjects.remove(subject);
    }
}
