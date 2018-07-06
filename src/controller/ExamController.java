package controller;
import domain.*;
import java.util.List;

import dao.ExamDaoImpl;
public class ExamController{
	private static ExamController instance = new ExamController();
	public static ExamController getInstance() {return instance;}
	private ExamController() {}
	
	public void createExam() {
		
	}
	
	public List<ExamBean> listExam() {
		// TODO Auto-generated method stub
		return null;
	}
	
	public List<ExamBean> findExamByWord(String word) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public ExamBean findExamBySeq(String seq) {
		// TODO Auto-generated method stub
		return null;
	}
	
	public int countExam() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	public void modifyExam(ExamBean bean) {
		// TODO Auto-generated method stub
		
	}
	
	public void removeExam(ExamBean bean) {
		// TODO Auto-generated method stub
		
	}
	
}