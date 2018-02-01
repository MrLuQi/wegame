package com.game.quartz;

/** 
 * 定时任务参数实体 
 * @author yjw 
 * 
 */  
public class QuartzParamsEntity {  
  
    /** 
     * 执行定时任务的class <? extends Job> 
     */  
    private Class<?> jobClass;  
    /** 
     * trigger名称 
     */  
    private String triggerName;  
    public Class<?> getJobClass() {
		return jobClass;
	}
	public void setJobClass(Class<?> jobClass) {
		this.jobClass = jobClass;
	}
	public String getTriggerName() {
		return triggerName;
	}
	public void setTriggerName(String triggerName) {
		this.triggerName = triggerName;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getCronExpression() {
		return cronExpression;
	}
	public void setCronExpression(String cronExpression) {
		this.cronExpression = cronExpression;
	}
	/** 
     * job名称 
     */  
    private String jobName;  
    /** 
     * group名称 
     */  
    private String groupName;  
    /** 
     * 定时任务表达式 
     */  
    private String cronExpression;  
          
}  