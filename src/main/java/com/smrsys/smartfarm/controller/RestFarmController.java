package com.smrsys.smartfarm.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.smrsys.smartfarm.domain.SFDisControl;
import com.smrsys.smartfarm.domain.SFDisSenser;
import com.smrsys.smartfarm.domain.SFDisSetting;
import com.smrsys.smartfarm.model.SFDisControlService;
import com.smrsys.smartfarm.model.SFDisSenserService;
import com.smrsys.smartfarm.model.SFDisSettingService;

@RestController
@RequestMapping("/rest")
public class RestFarmController {
	
	@Autowired
	private SFDisSenserService sfDisSenserService;
	@Autowired
	private SFDisControlService sfDisControlService;
	@Autowired
	private SFDisSettingService sfDisSettingService;
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@GetMapping("/sensers")
	public ResponseEntity<List<SFDisSenser>> getSFDisSenser(){
		return new ResponseEntity<List<SFDisSenser>>(sfDisSenserService.selectAll(), HttpStatus.OK);
	}
	
	@GetMapping("/controls")
	public ResponseEntity<List<SFDisControl>> getSFDisControl(){
		return new ResponseEntity<List<SFDisControl>>(sfDisControlService.selectAll(), HttpStatus.OK);
	}
	
	@GetMapping("/settings")
	public ResponseEntity<List<SFDisSetting>> getSFDisSetting(){
		return new ResponseEntity<List<SFDisSetting>>(sfDisSettingService.selectAll(), HttpStatus.OK);
	}
	
	@PostMapping("/settings")
	@ResponseBody
	public ResponseEntity<Void> settingEdit(@RequestBody List<SFDisSetting> settingList){
		logger.info("settingList : "+settingList);
		sfDisSettingService.update(settingList);
		return null;
	}
	
	
}
