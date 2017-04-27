package org.zerock.service;

import java.util.List;

import org.zerock.domain.Criteria;
import org.zerock.domain.ReviewVO;

public interface ReviewService {

	public void create(ReviewVO vo) throws Exception;
	public void update(ReviewVO vo) throws Exception;
	public void delete(Integer rno) throws Exception;
	
	public List<ReviewVO> contentRead(Integer rno) throws Exception;
	public List<ReviewVO> listAll(Criteria cri) throws Exception;
	
	public int listCount(Criteria cri) throws Exception;
	
}
