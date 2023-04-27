package com.smrsys.smartfarm.domain;

import lombok.Data;

@Data
public class SFDisSenser {//장비(센서) 정보
	private String SE_FA_Code;
	private String SE_CR_Code;
	private String SE_Sequence;
	private String SE_Code;
	private String SE_Name;
	private String SE_Value;
	private String SE_Bigo;
}