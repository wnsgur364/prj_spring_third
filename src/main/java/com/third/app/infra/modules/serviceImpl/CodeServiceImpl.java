package com.third.app.infra.modules.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.third.app.infra.modules.dao.CodeDao;
import com.third.app.infra.modules.dto.Code;
import com.third.app.infra.modules.service.CodeService;
import com.third.app.infra.modules.vo.CodeVo;

@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao dao;
	
	@Override
	public int selectOneCount(CodeVo vo) {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Code> selectList(CodeVo vo) {
		return dao.selectList(vo);
	}

	@Override
	public Code selectOne(CodeVo vo) {
		return dao.selectOne(vo);
	}

	@Override
	public int update(Code dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(Code dto) {
		return dao.delete(dto);
	}

	@Override
	public int insert(Code dto) {
		return dao.insert(dto);
	}
	
//	for cache
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear();
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}
	
	public static void clear() throws Exception {
		Code.cachedCodeArrayList.clear();
	}
	
	public static List<Code> selectListCachedCode(String codeGroup_seq) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getCodeGroup_seq().equals(codeGroup_seq)) {
				rt.add(codeRow);
			} else {
// 					by pass
			}
		}
		return rt;
	}
	
	public static String selectOneCachedCode(int code) throws Exception {
		String rt = "";
		for(Code codeRow : Code.cachedCodeArrayList) {
			if (codeRow.getSeq().equals(Integer.toString(code))) {
				rt = codeRow.getName();
			} else {
// 					by pass
			}
		}
		return rt;
	}

}