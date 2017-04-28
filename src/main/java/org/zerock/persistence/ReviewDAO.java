package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.ReviewVO;

public interface ReviewDAO {


	//create
	public void insert(ReviewVO vo);
	
	//contentRead
	public List<ReviewVO> contentRead(int rno);
	
	//update
	public void update(ReviewVO vo);
	
	//delete
	public void delete(int rno);

	//read
	public List<ReviewVO> listAll(Criteria cri);
	
	//count0
	public int listCount(Criteria cri);
	
	
}
