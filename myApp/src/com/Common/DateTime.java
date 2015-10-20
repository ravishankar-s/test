package com.Common;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

public class DateTime {

	// method to get current date and time
	public static String getDate()
	{
	DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	Calendar cal = Calendar.getInstance();
	String str=(dateFormat.format(cal.getTime()));
	return str;
	}

}
