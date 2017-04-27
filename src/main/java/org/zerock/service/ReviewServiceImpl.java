package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReviewVO;
import org.zerock.persistence.ReviewDAO;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Inject
	ReviewDAO dao;

	@Override
	public void create(ReviewVO vo) throws Exception {

		dao.insert(vo);

	}

	@Override
	public void update(ReviewVO vo) throws Exception {

		dao.update(vo);

	}

	@Override
	public void delete(Integer rno) throws Exception {

		dao.delete(rno);

	}

	@Override
	public List<ReviewVO> contentRead(Integer rno) throws Exception {

		return dao.contentRead(rno);

	}

	@Override
	public List<ReviewVO> listAll(Criteria cri) throws Exception {
		return dao.listAll(cri);
	}

	@Override
	public int listCount(Criteria cri) throws Exception {
		return dao.listCount(cri);
	}

}
