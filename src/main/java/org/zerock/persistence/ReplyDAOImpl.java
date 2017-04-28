package org.zerock.persistence;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

@Repository
public class ReplyDAOImpl implements ReplyDAO {

	static final String namespace="org.zerock.persistence.ReviewDAO";
	
	@Inject
	SqlSessionTemplate session;
	

	@Override
	public List<ReplyVO> listReply(int rno) {
		return session.selectList(namespace+".replyRead", rno);
	}

}
