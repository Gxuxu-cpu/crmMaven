package com.crm.basd.service;

import com.crm.base.service.IBaseService;
import com.crm.bean.BasDict;

public interface IBasdService extends IBaseService<BasDict> {

	String[] selectDistinctType(String type);

}
