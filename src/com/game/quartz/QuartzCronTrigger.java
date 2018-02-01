package com.game.quartz;

import org.quartz.CronTrigger;
import static org.quartz.CronScheduleBuilder.cronSchedule;  
import static org.quartz.TriggerBuilder.newTrigger; 

/** 
* 根据给定的参数，获取CronTrigger 
* @author liZhongLin 
* 
*/  
public class QuartzCronTrigger {  

  /** 
   * 根据给定的参数，获取CronTrigger 
   * @param paramsEntity 
   * @return CronTrigger 
   */  
  public static CronTrigger getCronTrigger(QuartzParamsEntity paramsEntity) {  

      String trigger = paramsEntity.getTriggerName();  
      String group = paramsEntity.getGroupName();  
      String cronExpression = paramsEntity.getCronExpression();  

      return newTrigger().withIdentity(trigger, group).withSchedule(cronSchedule(cronExpression)).build();  
  }  
}  
  
