package com.crm.basd.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.crm.basd.service.IBasdService;
import com.crm.base.service.impl.BaseServiceImpl;
import com.crm.bean.BasDict;
import com.crm.mapper.BasDictMapper;
import com.crm.support.PageInfo;

@Service//service����mapper��
public class BasdServiceImpl extends BaseServiceImpl<BasDict> implements IBasdService {

	private BasDictMapper dictMapper;
	
	//����ͨ��ģ����ķ�����ע��ͨ��mapper
	@Resource
	public void SetSuperMapper(BasDictMapper mapper) {
		super.setBaseMapper(mapper);
		this.dictMapper = mapper;
	}

	@Override
	public String[] selectDistinctType(String type) {
		// TODO Auto-generated method stub
		return dictMapper.selectDistinctType(type);
	}

}
