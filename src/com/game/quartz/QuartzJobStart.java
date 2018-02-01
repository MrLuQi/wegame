package com.game.quartz;

import org.quartz.CronTrigger;
import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;

/** 
 *  
 * 1、Job表示一个工作，要执行的具体内容。此接口中只有一个方法:void execute(JobExecutionContext context) 
 * 2、JobDetail表示一个具体的可执行的调度程序,Job是这个可执行程调度程序所要执行的内容,另外JobDetail还包含了这个任务调度的方案和策略。 
 * 3、Trigger代表一个调度参数的配置，什么时候去调用。 
 * 4、Scheduler代表一个调度容器,一个调度容器中可以注册多个JobDetail和Trigger。当Trigger与JobDetail组合,就可以被Scheduler容器调度了。 
 *  
 * @author liZhongLin 
 * 
 */  
public class QuartzJobStart {  
  
    /** 
     * 定义静态Scheduler 
     */  
    private static Scheduler sched;   
      
    /** 
     * 执行静态代码块 
     */  
    static{  
        sched = QuartzSchedulerFactory.getInstance();  
    }  
      
    /** 
     * Job线程启动操作 
     * @param paramsEntity 
     * @throws SchedulerException 
     */  
    public static void start(QuartzParamsEntity paramsEntity) throws SchedulerException {   
  
        JobDetail job = QuartzJobDetail.getJobDetail(paramsEntity);  
  
        CronTrigger trigger = QuartzCronTrigger.getCronTrigger(paramsEntity);  
  
        sched.scheduleJob(job, trigger);  
  
        sched.start();  
    }  
      
    /** 
     * Job线程关闭操作 
     * @throws SchedulerException 
     */  
    public static void stop() throws SchedulerException {  
        sched.shutdown(true);  
    }  
}  
