package com.game.controller;

import java.util.Calendar;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.game.pojo.Time;

@Controller
public class TimeController {

	
	@RequestMapping(value = "/time")
	@ResponseBody
	public  Time time() {
		/*Date date = new Date();
	    long times = date.getTime();//时间戳
	    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	    String dateString = formatter.format(date);
	    System.out.println(dateString);
	    System.out.println(times);*/
		Time times=new Time();
	    Calendar c = Calendar.getInstance();//可以对每个时间域单独修改   
	    int year = c.get(Calendar.YEAR);  
	    int month = c.get(Calendar.MONTH)+1;   
	    int day = c.get(Calendar.DATE);    
	    int hour = c.get(Calendar.HOUR_OF_DAY);   
	    int minute = c.get(Calendar.MINUTE);   
	    int second = c.get(Calendar.SECOND);  
	    times.setYear(year);
	    times.setMonth(month);
	    times.setDay(day);
	    times.setHour(hour);
	    times.setMinute(minute);
	    times.setSecond(second);
	    
	  // System.out.println(year + "/" + month + "/" + day + " " +hour + ":" +minute + ":" + second);   
	    
	    
		return times;
	}
	
}

