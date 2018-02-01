package com.game.quartz;


import org.quartz.Scheduler;  
import org.quartz.SchedulerException;  
import org.quartz.SchedulerFactory;  
import org.quartz.impl.StdSchedulerFactory;  

/** 
* 构建Scheduler工厂 
* @author yjw 
* 
*/  
public class QuartzSchedulerFactory {  

  /** 
   * 定义静态Scheduler工厂 
   */  
  private static SchedulerFactory schedulerFactory;  

  /** 
   * 执行静态代码块 
   */  
  static {  
      schedulerFactory = new StdSchedulerFactory();  
  }  

  /** 
   * 返回一个Scheduler对象 
   * @return Scheduler 
   */  
  public static Scheduler getInstance() {  
      try {  
          return QuartzSchedulerFactory.schedulerFactory.getScheduler();  
      } catch (SchedulerException e) {  
          e.printStackTrace();  
      }  
      return null;  
  }  

}  