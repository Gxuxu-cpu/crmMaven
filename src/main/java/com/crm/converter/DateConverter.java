package com.crm.converter;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

//Converter<S, T>  把S 类型转成  T类型。
/**
 * 把 2019-02-03 13:22:22 String型的转成Date型的
 * @author Lenovo
 *
 */
public class DateConverter implements Converter<String, Date> {

	@Override
	public Date convert(String source) {
		try {
			
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Date date = simpleDateFormat.parse(source);

			return date;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}


}

