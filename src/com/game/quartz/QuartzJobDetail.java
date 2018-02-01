package com.game.quartz;

import org.quartz.JobDetail;
import static org.quartz.JobBuilder.newJob;  

/** 
 * 根据给定的参数获取JobDetail对象 
 * @author liZhongLin 
 * 
 */  
public class QuartzJobDetail {  
  
    /** 
     * 根据给定的参数获取JobDetail对象 
     * @param paramsEntity 
     * @return JobDetail 
     */  
    @SuppressWarnings({ "unchecked", "rawtypes" })  
    public static JobDetail getJobDetail(QuartzParamsEntity paramsEntity) {  
          
        Class jobClass = paramsEntity.getJobClass();  
        String jobName = paramsEntity.getJobName();  
        String groupName = paramsEntity.getGroupName();  
  
        return newJob(jobClass).withIdentity(jobName, groupName).build();  
    }  
}  
