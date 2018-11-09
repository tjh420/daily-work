package com.tjh.learn.baseKnowledge.multithread;

import lombok.extern.slf4j.Slf4j;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * Created by tjh on 2018/11/8.
 */
@Slf4j
public class ScheduledExecutorServiceApi {

    /**
     * 创建并执行一个在给定初始延迟0和周期间距100后，周期性执行的定期操作
     */
    public static void scheduleAtFixedRate() {
        ScheduledExecutorService executorService = Executors.newSingleThreadScheduledExecutor();
        executorService.scheduleAtFixedRate(new Runnable() {
            @Override
            public void run() {
                System.out.println("run" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
            }
        }, 0, 100, TimeUnit.MILLISECONDS);
    }

    public static void main(String[] args) {
        scheduleAtFixedRate();
    }
}
