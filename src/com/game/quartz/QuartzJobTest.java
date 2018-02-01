package com.game.quartz;

/** 
 * 任务调度测试类 
 * @author liZhongLin 
 * 
 */  
public class QuartzJobTest {  
  
    /** 
     * 主方法 
     * 这里的输入参数使用了硬编码的方式，最合理的方式是可以把这些参数存放到数据库当中。 
     * 之后根据查询的结果赋给List<QuartzParamsEntity>,并循环执行任务调度 
     * @param args 
     * @throws Exception 
     */  
    public static void main(String[] args) throws Exception {         
          
      /*  QuartzParamsEntity paramsEntityOne = new QuartzParamsEntity();  
        paramsEntityOne.setJobClass(DateJob.class);  
        paramsEntityOne.setJobName("myJobOne");  
        paramsEntityOne.setGroupName("myGroup");  
        paramsEntityOne.setTriggerName("myTriggerOne");  
        paramsEntityOne.setCronExpression("0/1 * * * * ?");//每个一秒执行一次  
*/          
        QuartzParamsEntity paramsEntityTwo = new QuartzParamsEntity();  
        paramsEntityTwo.setJobClass(RandomJob.class);  
        paramsEntityTwo.setJobName("myJobTwo");  
        paramsEntityTwo.setGroupName("myGroup");  
        paramsEntityTwo.setTriggerName("myTriggerTwo");  
        paramsEntityTwo.setCronExpression("0/2 * * * * ?");//每个两秒执行一次  
          
       // QuartzJobStart.start(paramsEntityOne);  
        QuartzJobStart.start(paramsEntityTwo);  
          
      //  Thread.sleep(6000);//线程休眠六秒时间  
          
        QuartzJobStart.stop();  
    }  
}  