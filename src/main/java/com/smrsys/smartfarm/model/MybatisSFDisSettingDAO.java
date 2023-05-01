package com.smrsys.smartfarm.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.smrsys.smartfarm.domain.SFDisSetting;

@Repository
public class MybatisSFDisSettingDAO implements SFDisSettingDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public List<SFDisSetting> selectAll() {
		return sqlSessionTemplate.selectList("SFDisSetting.selectAll");
	}


	@Override
	@Transactional
	public void update(List<SFDisSetting> settingList) {
		for(SFDisSetting setting:settingList) {
			sqlSessionTemplate.update("SFDisSetting.update", setting);
		}
	}

}
