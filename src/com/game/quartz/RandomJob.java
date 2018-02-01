package com.game.quartz;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;  
import org.slf4j.LoggerFactory;  
/** 
 * 生成一个1-100的随机数的JOB 
 * @author liZhongLin 
 * 
 */  
public class RandomJob implements Job {  
  
    /** 
     * 日志信息 
     */  
    private final Logger log = LoggerFactory.getLogger(RandomJob.class);  
      
    /** 
     * 生成一个1-100的随机数 
     */  
    @Override  
    public void execute(JobExecutionContext context) throws JobExecutionException {  
        int random = (int)(Math.random()*100);  
        log.debug("生成的随机数为：" + random);  
    }  
}  