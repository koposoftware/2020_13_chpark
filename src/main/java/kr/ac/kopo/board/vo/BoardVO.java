package kr.ac.kopo.board.vo;

import java.util.Map;

import javax.validation.constraints.NotEmpty;

import org.hibernate.validator.constraints.Length;

public class BoardVO {
	
	private int no;
	@Length(min = 2, max = 100, message = "제목은 2글자 이상 입력 하셔야 합니다.")
	//@NotEmpty(message = "필수항목 입니다")
	private String title;
	// 자바 정규식 표현식? 한글은 유니코드로 
	//@Pattern(regexp = "^[A-Za-z0-9]*$", message = "첫글자로 특수기호는 사용할 수 없습니다.")
	@NotEmpty(message = "필수항목 입니다")
	private String writer;
	@NotEmpty(message = "필수항목 입니다")
	private String content;
	private int viewCnt;
	private String regDate;
	private int originNo;
	private int groupOrd;
	
		
	public BoardVO() {
	}
	public BoardVO(int no, String title, String writer, String regDate) {
		super();
		this.no = no;
		this.title = title;
		this.writer = writer;
		this.regDate = regDate;
	}
	public BoardVO(int no, String title, String writer, String content, int viewCnt, String regDate) {
		super();
		this.no = no;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.viewCnt = viewCnt;
		this.regDate = regDate;
	}
	public BoardVO(int no, String title, String writer, String content, int viewCnt, String regDate, int originNo,
			int groupOrd) {
		this.no = no;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.viewCnt = viewCnt;
		this.regDate = regDate;
		this.originNo = originNo;
		this.groupOrd = groupOrd;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public int getOriginNo() {
		return originNo;
	}
	public void setOriginNo(int originNo) {
		this.originNo = originNo;
	}
	public int getGroupOrd() {
		return groupOrd;
	}
	public void setGroupOrd(int groupOrd) {
		this.groupOrd = groupOrd;
	}
	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", title=" + title + ", writer=" + writer + ", content=" + content + ", viewCnt="
				+ viewCnt + ", regDate=" + regDate + ", originNo=" + originNo + ", groupOrd=" + groupOrd + "]";
	}
	
	
}
