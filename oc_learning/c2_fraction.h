//
//  c2_fraction.h
//  oc_learning
//
//  Created by junjun on 2018/1/29.
//  Copyright © 2018年 junjun. All rights reserved.
//

#ifndef c2_fraction_h
#define c2_fraction_h

#import <Foundation/Foundation.h>

//@interface用于描述类和方法
@interface Fraction:NSObject

//第10章start---
//初始化方法
-(Fraction * )initWith: (int)n denomiator:(int)d;

//这个初始化方法调用initWith方法
-(instancetype) init;

//自定义alloc函数
+(Fraction *) allocF;

//返回分配的实例数目
+(int)count;

//第10章end---

-(void) print;

////实例方法
//-(void) setNumerator:(int) n;
//-(void) setDenominator:(int) d;
//
////访问实例变量
//-(int) numerator;
//-(int) denominator;

@property int numerator, denominator;//代替了上面4个方法

//多个参数
-(void) setAll:(int) n  denomiator:(int) d;

//类方法
+(void) myName;


@end

#endif /* c2_fraction_h */
