//
//  PropertyHeader.h
//  OCBase
//
//  Created by 杜志 on 2021/2/19.
//  Copyright © 2021 duzhi. All rights reserved.
//

#ifndef PropertyHeader_h
#define PropertyHeader_h

/*
 Property 关键字的理解
 1.@property与属性的区别
 @property = 属性 + getter + setter方法
 属性只在 底层的成员变量ivarlist中添加了属性 但是没有自动生成getter和setter方法 需要手动操作
 @property 会在属性列表中插入数据，并且生成getter和setter方法
 1.1 成员变量列表插入数据
 1.2 methodlist增加getter和setter方法
 1.3 property_list增加属性
 1.4 OBJC_IVAR_$类名$属性名称 相对于对象起始地址的偏移量
 1.5 getter 和setter方法实现 （获取对应对象首地址偏移量的地址内容和对地址内容进行设置）
 
 2.strong，copy，assign，retain，weak，nonatomic,atomic,readonly,readwrite等关键字的理解
 
 2.1 strong :  强引用，MRC中 先release旧对象后retain新对象，强引用一个对象，一个对象只要有强引用指针指向它，对象就不会被释放（告诉系统保留指向的对象在堆区，直到没有强引用指针指向它）
 2.2 copy：对对象进行拷贝，被声明的对象必须遵循NSCoping协议并实现 -(id)copyWithZone:(NSZone *)zone方法
 block声明的时候 也使用copy 被系统直接保存到堆区
 为什么NSString用copy？  copy是将复制的对象进行了一层拷贝，当外层对象被修改时，已拷贝的对象不会改变，如果用strong修饰 则外层对象被修改，已赋值的对象也会被修改
 2.3 assign 用于基本数据类型 ， 不影响引用计数 。当assign指向一个对象的时候，对象被释放会导致产生野指针
 2.4 retain 与strong相同 MRC中旧对象引用计数-1  新的对象引用计数+1 MRC中与release同步出现
 2.5 weak 弱引用，并未持有对象，分配了一个不被持有的属性，当引用者被销毁的时候自动置为nil 。weak的实现原理？ weak双向链表？
 2.6 nonatomic 非原子性 没有对对象进行加锁处理
 2.7 atomic 系统会用互斥锁(iOS10之前是自旋锁) os_unsafe_lock进行加锁处理 会导致性能消耗，且不一定能保证线程安全，因为声明后 可以重写getter 和setter方法 此时需要自行进行保证线程安全 最好的解决方法是nonatomic + 自行加锁
 2.8 readonly 只读属性 系统默认只会分配 getter方法
 2.9 readwrite可读可写 系统默认分配getter和setter方法

 3.深浅拷贝与 copy，mutalecopy
 
 //集合与非集合的copy mutableCopy

 NSArray copy
 NSArray mutableCopy
 NSMutableArray copy
 NSMutableArray mutableCopy
 
 */


#endif /* PropertyHeader_h */
