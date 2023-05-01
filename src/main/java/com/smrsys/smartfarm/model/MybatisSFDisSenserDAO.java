package com.smrsys.smartfarm.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.smrsys.smartfarm.domain.SFDisSenser;

@Repository
public class MybatisSFDisSenserDAO implements SFDisSenserDAO{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<SFDisSenser> selectAll() {
		return sqlSessionTemplate.selectList("SFDisSenser.selectAll");
	}
	
}
