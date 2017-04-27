package org.zerock.domain;

public class PageMaker {

	
	public int current,total,start,end,size;
	
	public boolean next,prev;
	
	public Criteria cri;
	
	
	public PageMaker(Criteria cri, int total){
		
		this.total= total;
		this.cri=cri;
		this.size= cri.getSize();
		this.current=cri.getPage();
	
		calc();
	}
	
	private void calc(){
		int tempend = (int)Math.ceil(current/10.0)*10;
		
		start = tempend-9;
		end = (int)(total < tempend*size ? Math.ceil(total/(double)size): tempend);
		prev= (start == 1) ? false:true;
		next= (total < end*size)? false:true;
		
	}
	
	
	
	

	public int getCurrent() {
		return current;
	}

	public void setCurrent(int current) {
		this.current = current;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	@Override
	public String toString() {
		return "PageMaker [current=" + current + ", total=" + total + ", start=" + start + ", end=" + end + ", size="
				+ size + ", next=" + next + ", prev=" + prev + "]";
	}

	
	
}
