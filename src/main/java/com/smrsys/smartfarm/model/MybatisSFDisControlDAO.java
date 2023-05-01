package com.smrsys.smartfarm.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.smrsys.smartfarm.domain.SFDisControl;

@Repository
public class MybatisSFDisControlDAO implements SFDisControlDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<SFDisControl> selectAll() {
		return sqlSessionTemplate.selectList("SFDisControl.selectAll");
	}

	@Override
	public void updateValue(SFDisControl sfDisControl) {
		sqlSessionTemplate.update("SFDisControl.updateValue", sfDisControl);
	}
	
	
}
