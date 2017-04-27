package org.zerock.domain;

public class Criteria {

	private int size, page;
	private String keyword, type;

	
	//type이랑 keyword검색처리 해줘야함!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	
	public Criteria() {

		this.page = 1;
		this.size = 10;

	}

	// limit #{skip}, #{amount}
	public int getSkip(){
		
		return (this.page -1)*this.size;
		
	}
	
	// limit #{skip}, #{amount}
	public int getAmount(){
	
		return this.size;
		
	}
	
	// 현재 페이지가 1보다 작을때  default값 1
	public Criteria settingPage(int page){
		
		if(page<0){
			this.page =1;			
		}
		return this;
		
	}
	
	/*
	public Criteria settingSize(int size){
		if(size <=0 || size>=5){
			this.size =5;
			
		}
		
		return this;
		
	}
	*/
	
	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	@Override
	public String toString() {
		return "Criteria [size=" + size + ", page=" + page + ", keyword=" + keyword + ", type=" + type + "]";
	}

}
