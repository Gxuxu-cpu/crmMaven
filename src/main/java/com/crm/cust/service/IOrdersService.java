package com.crm.cust.service;

import com.crm.base.service.IBaseService;
import com.crm.bean.Orders;

/**
 * ��Ϊͨ��ģ����Ѿ�д����ҳ��ѯ������ֱ�Ӽ̳нӿڼ���
 * @author Lenovo
 *
 */
public interface IOrdersService extends IBaseService<Orders> {

	Orders findOrdersByOrdId(Long odrId);

}
