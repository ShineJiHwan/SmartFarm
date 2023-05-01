package com.smrsys.smartfarm.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smrsys.smartfarm.domain.SFDisControl;

@Service
public class SFDisControlServiceImpl implements SFDisControlService{
	
	@Autowired
	private SFDisControlDAO sfDisControlDAO;

	@Override
	public List<SFDisControl> selectAll() {
		return sfDisControlDAO.selectAll();
	}

	@Override
	public void updateValue(SFDisControl sfDisControl) {
		sfDisControlDAO.updateValue(sfDisControl);
	}

}
