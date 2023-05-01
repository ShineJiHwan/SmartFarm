package com.smrsys.smartfarm.model;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smrsys.smartfarm.domain.SFDisSenser;

@Service
public class SFDisSenserServiceImpl implements SFDisSenserService{
	
	@Autowired
	private MybatisSFDisSenserDAO mybatisSFDisSenserDAO;
	
	@Override
	public List<SFDisSenser> selectAll() {
		return mybatisSFDisSenserDAO.selectAll();
	}

}
