//
//  c2_fraction.m
//  oc_learning
//
//  Created by junjun on 2018/1/29.
//  Copyright © 2018年 junjun. All rights reserved.
//

//只能在本文件中被访问
static int gCounter;

#import "c2_fraction.h"


//@implementation 用于描述数据，并实现接口中申明方法的实际代码
@implementation Fraction
////花括号里的是实例变量
//{
//    int numerator; //除数
//    int denominator; //被除数
//}
//
//
//-(void)setNumerator:(int)n
//{
//    numerator = n;
//}
//
//-(void)setDenominator:(int)d
//{
//    denominator = d;
//}
//
////访问实例变量
//-(int)numerator
//{
//    return numerator;
//}
//
//-(int)denominator
//{
//    return denominator;
//}


//使用@synthesize替代getter和setter代码
@synthesize numerator, denominator;

-(void) print
{
    NSLog(@"%i/%i",numerator,denominator);
}

//多个参数
-(void) setAll:(int) n  denomiator:(int) d
{
    numerator= n;
    denominator = d;
}


+(void)myName
{
    NSLog(@"my name is Fraction");
}

//第10章start---
-(Fraction * )initWith: (int)n  denomiator:(int)d
{
    self = [super init];
    if(self)
    {
        [self setAll:n denomiator:d];
    }
    
    return self;
}

//这个初始化方法调用initWith方法
-(instancetype) init
{
    return [self initWith:1 denomiator:1];
}


//自定义alloc函数
+(Fraction *) allocF
{
    //extern 是声明(不是定义),表明这是一个外部变量
    //但是这里gCounter是static 在其他文件中不能使用 extern 访问;
    extern int gCounter;
    ++gCounter;
    
    return [Fraction alloc];
}

//返回分配的实例数目
+(int)count
{
    extern int gCounter;
    return gCounter;
}


//第10章end---

@end

