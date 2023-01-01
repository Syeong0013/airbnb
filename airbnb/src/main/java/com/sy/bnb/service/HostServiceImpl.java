package com.sy.bnb.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sy.bnb.dao.HostDAO;
import com.sy.bnb.dao.MainDAO;
import com.sy.bnb.model.LodgingVo;

@Service
public class HostServiceImpl implements HostService{
	@Autowired
	private MainDAO mainDAO;
	
	@Autowired
	private HostDAO hostDAO;
	
	@Override
	public int hosting(LodgingVo vo) {
		return hostDAO.hosting(vo);
	}

	@Override
	public int hosting_facility(LodgingVo vo) {
		return hostDAO.hosting_facility(vo);
	}
	
	@Override
	public List<Map<String, String>> getFacility(){
		return hostDAO.getFacility();
	}
	
	@Override
	public List<Map<String, String>> getTheme(){
		return mainDAO.getTheme();
	}
	
	@Override
	public List<Map<String, String>> getStructure(){
		return hostDAO.getStructure();
	}
	
	@Override
	public void saveFile(HttpServletRequest req, LodgingVo vo) {
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) req;
		List<MultipartFile> files = multipartHttpServletRequest.getFiles("picture");
		String path = "d:/airbnb/board";
		String dir_path = "";

		List<String> pic_path_list = new ArrayList<String>();
		
		for(MultipartFile file : files) {
			dir_path = path + "/" + vo.getL_id(); // + file.getOriginalFilename();
			File dir = new File(dir_path);
			if(!dir.exists()) {
				dir.mkdir();
			}
			String full_path = writeFile(file, file.getOriginalFilename(), dir_path);
			pic_path_list.add(full_path);
		}
		vo.setPic_path_list(pic_path_list);
		hostDAO.insertPictures(vo);
	}
	
	private String writeFile(MultipartFile file, String fileName, String path){
		String full_path = path + "/" + fileName;
		byte[] data;
		FileOutputStream fos = null;
		try {
			data = file.getBytes();
			fos = new FileOutputStream(full_path);
			fos.write(data);
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return full_path;
	}
	
	@Override
	public List<LodgingVo> getUserLodging(String user_email) {
		return hostDAO.getUserLodging(user_email);
	}

}
