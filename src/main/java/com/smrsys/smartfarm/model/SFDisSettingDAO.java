package com.smrsys.smartfarm.model;

import java.util.List;

import com.smrsys.smartfarm.domain.SFDisSetting;

public interface SFDisSettingDAO {
	public List<SFDisSetting> selectAll();
	public void update(List<SFDisSetting> settingList);
}
