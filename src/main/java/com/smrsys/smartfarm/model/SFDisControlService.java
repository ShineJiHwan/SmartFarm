package com.smrsys.smartfarm.model;

import java.util.List;

import com.smrsys.smartfarm.domain.SFDisControl;

public interface SFDisControlService {
	public List<SFDisControl> selectAll();
	public void updateValue(SFDisControl sfDisControl);
}
