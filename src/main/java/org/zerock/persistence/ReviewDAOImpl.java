package org.zerock.persistence;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReviewVO;

@Repository
public class ReviewDAOImpl implements ReviewDAO{

	static final String namespace = "org.zerock.persistence.ReviewDAO";
	
	@Inject
	SqlSessionTemplate sess;

	
	
	@Override
	public void insert(ReviewVO vo) {
		
		sess.insert(namespace+".create", vo);
		
	}

	@Override
	public List<ReviewVO> contentRead(int rno) {
	
		return sess.selectList(namespace+".contentRead",rno);

	}

	@Override
	public void update(ReviewVO vo) {
		
		sess.update(namespace+".update", vo);
		
	}

	@Override
	public void delete(int rno) {
		
		sess.delete(namespace+".delete", rno);
		
	}

	@Override
	public List<ReviewVO> listAll(Criteria cri) {
		return sess.selectList(namespace+".read",cri);
	}

	@Override
	public int listCount(Criteria cri) {
		return sess.selectOne((namespace)+".listCount");
	}
	
	
	
	
	
}
