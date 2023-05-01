package com.smrsys.smartfarm.domain;

import lombok.Data;

@Data
public class SFDisControl {//컨트롤 해야하는 것들
	private String CON_FA_Code;
	private String CON_CR_Code;
	private String CON_Sequence;
	private String CON_Port;
	private String CON_Name;
	private String CON_Condition;
	private String CON_Value;
	private String CON_Time;
	private String CON_Bigo;
}
