package com.third.app.infra.common.constants;

public final class Constants {
	
//	for paging
	public static final int ROW_NUM_TO_SHOW = 10;
	public static final int PAGE_NUM_TO_SHOW = 5;
	
//	인터셉터
	public static final String URL_LOGINFORM = "/loginUser";
	public static final String URL_LOGINXDMFORM = "/loginAdmin";
	
//	파일 업로드	
	public static final String UPLOAD_PATH_PREFIX_EXTERNAL = "D://factory/ws_eclipse/prj_spring_thrid/src/main/webapp";
	public static final String UPLOAD_PATH_PREFIX = "D://factory/ws_eclipse/prj_spring_thrid/src/main/webapp/resources/uploaded";
	public static final String UPLOAD_PATH_PREFIX_FOR_VIEW = "/resources/uploaded";

//	UtilDateTime
	public static final String DATETIME_FORMAT_BASIC = "yyyy-MM-dd HH:mm:ss";
	public static final String TIME_FORMAT_BASIC = "HH:mm:ss";
	
}
