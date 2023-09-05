package com.third.app.infra.modules.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.third.app.infra.common.util.UtilDateTime;
import com.third.app.infra.modules.dto.Member;
import com.third.app.infra.modules.serviceImpl.MemberServiceImpl;
import com.third.app.infra.modules.vo.MemberVo;


@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping("/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(service.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			model.addAttribute("list", service.selectList(vo));
		} else {
//			by pass
		}
		return "admin/memberList";
	}
	
	@RequestMapping("/memberForm")
	public String memberForm(MemberVo vo, Model model) {
		model.addAttribute("item", service.selectOne(vo));
		return "admin/memberForm";
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date now = new Date();
		String now_dt = format.format(now);
		
//		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Member> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("첫번째 시트");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"시퀀스", "사용여부", "회원등급", "아이디", "이름", "생년월일", "성별", "이메일", "전화번호", "우편번호", "주소", "등록일자", "수정일자"};

	        row = sheet.createRow(rowNum++);
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getSeq() != null) cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));

	        	cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getDelNy() != null) cell.setCellValue(list.get(i).getDelNy() == 0 ? "N" : "Y");
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getDefaultNy() != null) cell.setCellValue(list.get(i).getDefaultNy() == 0 ? "회원" : "관리자");
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getId());
	            
	            cell = row.createCell(4);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getName());
	            
	            cell = row.createCell(5);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getDob());
     
	            cell = row.createCell(6);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            if(list.get(i).getGender() != null) cell.setCellValue(list.get(i).getGender());
	            
	            cell = row.createCell(7);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getEmail());
	            
	            cell = row.createCell(8);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getPhone());
	            
	            cell = row.createCell(9);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getZipcode());
	            
	            cell = row.createCell(10);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getAddress());
	            
	            cell = row.createCell(11);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getRegDate() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getRegDate()));
	        	
	        	cell = row.createCell(12);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getModDate() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getModDate()));
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=memberList_" + now_dt + ".xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
}
