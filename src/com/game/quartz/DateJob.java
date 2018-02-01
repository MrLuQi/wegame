package com.game.quartz;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;  
import org.slf4j.LoggerFactory;  
/** 
 *  
 * 生成一个当前时间的JOB 
 * @author liZhongLin 
 * 
 */  
public class DateJob implements Job{  
      
    /** 
     * 日志信息 
     */  
    private final Logger log = LoggerFactory.getLogger(DateJob.class);  
  
    /** 
     * 获取当前的时间 
     */  
    @Override  
    public void execute(JobExecutionContext arg0) throws JobExecutionException {  
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
        log.debug("现在的时间为：" + sdf.format(new Date()));  
    }  
}  
