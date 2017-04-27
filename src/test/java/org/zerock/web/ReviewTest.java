package org.zerock.web;

import java.util.List;

import javax.inject.Inject;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReviewVO;
import org.zerock.persistence.ReviewDAO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ReviewTest {

	private static final Logger logger = Logger.getLogger(ReviewTest.class);
	
	@Inject
	SqlSessionTemplate session;
	
	@Inject
	ReviewDAO dao;

	
	@Test
	public void test() {
		Object obj = session.selectOne("org.zerock.persistence.ReviewDAO.getTime");
		logger.info(obj);
	}

	
	@Test
	public void select(){
		List<ReviewVO> list= dao.contentRead(1);
		System.out.println(list);
		
	}
	
	@Test
	public void create(){
		ReviewVO vo= new ReviewVO();
		
		vo.setContent("content");
		vo.setTitle("title");
		vo.setWriter("writer");
		vo.setGubun("gubun");
		vo.setPname("pppp");
	
		dao.insert(vo);
	}
	
	@Test
	public void update(){
		ReviewVO vo= new ReviewVO();
		
		vo.setContent("222");
		vo.setTitle("333");
		vo.setGubun("555");
		vo.setPname("666");
		vo.setRno(8);
	
		dao.update(vo);
	}
	
	@Test
	public void delete(){
	
		dao.delete(8);
		
	}
	
	@Test
	public void read(){
		Criteria cri= new Criteria();
		
		List<ReviewVO> list=dao.listAll(cri);
		
		logger.info(list);
		
	}
	
	
	
	
	
	
}
