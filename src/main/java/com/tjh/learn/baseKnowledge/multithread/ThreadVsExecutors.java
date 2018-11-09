package com.tjh.learn.baseKnowledge.multithread;


import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * 每一次new Thread都会重新创建一个线程，而线程的创建和销毁都需要耗时的
 * jdk1.5的concurrent包中有一个Executors(线程池)，他能使我们创建的线程得到复用，不会频繁的创建和销毁线程。
 * 本类将Executors和每次new一个Thread进行对比
 * Created by tjh on 2018/11/9.
 */
public class ThreadVsExecutors {
    private ConcurrentLinkedQueue<String> queue = new ConcurrentLinkedQueue<String>();
    //	private ArrayList<String> queue = new ArrayList<String>();
//	private CyclicBarrier barrier = new CyclicBarrier(10000000);
    private CountDownLatch latch = new CountDownLatch(100000);
    ExecutorService es = Executors.newFixedThreadPool(4);
    public static void main(String[] args) {
        ThreadVsExecutors test001 = new ThreadVsExecutors();
        long timeStart = System.currentTimeMillis();
        test001.start();
        System.out.println(System.currentTimeMillis()-timeStart);
    }

    public void start(){
        for (int i = 0; i < 100000; i++) {
            Runnable001 runnable001 = this.new Runnable001(i);
            es.submit(runnable001);         //使用的线程池Executors
//			new Thread(runnable001).start();        //使用的单线程Thread
        }
        es.shutdown();
        try {
            //等待latch计数为0
            latch.await();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(queue.size());
    }

    private class Runnable001 implements Runnable{
        private int value;
        public Runnable001(int value) {
            this.value = value;
        }
        @Override
        public void run() {
            try {
//				barrier.await();
            } catch (Exception e) {
                e.printStackTrace();
            }
            queue.offer(value+"");
            latch.countDown();//latch计数减一
        }

    }
}
