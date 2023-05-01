package com.smrsys.smartfarm.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.smrsys.smartfarm.domain.SFDisSetting;

@Service
public class SFDisSettingServiceImpl implements SFDisSettingService{
	
	@Autowired
	private SFDisSettingDAO sfDisSettingDAO;
	
	@Override
	public List<SFDisSetting> selectAll() {
		return sfDisSettingDAO.selectAll();
	}

	@Override
	@Transactional
	public void update(List<SFDisSetting> settingList) {
		sfDisSettingDAO.update(settingList);;
	}


}
