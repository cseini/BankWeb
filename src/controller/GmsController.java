package controller;
import java.util.List;

import javax.swing.JOptionPane;

import domain.*;
import service.*;

public class GmsController {
	public static void main(String[] args) {
		ExamBean exam = null;
		while(true) {
			switch(JOptionPane.showInputDialog("0.종료 / 1.정보입력 / 2. 점수입력 ")) {
			case "0":
				return;
			case "1":
				exam = new ExamBean();
				String[] arr = JOptionPane.showInputDialog("이름, 월 순차 입력").split(",");
				exam.setMonth("7");
				exam.setMemId("A1");
				/*List<MemberBean> list = MemberServiceImpl.getInstance().findMemberByWord(arr[0]);*/
			  /*if(list.size()==0) {
					System.out.println("그 이름없어");
				}else if(list.size()==1) {
					exam.setMemId(list.get(0).getmemId());
				}else {
					System.out.println(list);
				}*/
				break;
			case "2":
				exam.setScore(JOptionPane.showInputDialog("자바, SQL, R, HTML5, PYTHON 순차입력"));
				exam.setScore("80,70,90,80,70");
				ExamServiceImpl.getInstance().createExam(exam);
				
				break;
			}
		}
	}
}
