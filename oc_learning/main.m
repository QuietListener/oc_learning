//
//  c2_class.m
//  oc_learning
//
//  Created by junjun on 2018/1/29.
//  Copyright © 2018年 junjun. All rights reserved.
//

#import <Foundation/Foundation.h>

#import  "c2_fraction.h"
#import  "c8_rectangle.h"

//第二单元
void test_c3()
{
    NSLog(@"\r\n==============test_c3==================\r\n");
    Fraction * myfraction;

    //创建一个分数实例并初始化
    myfraction = [Fraction alloc];//为新分数分配内存空间
    myfraction = [myfraction init]; //初始化，init这个消息发送给实例并不是类
    
    //设置分数为1/3
    [myfraction setNumerator:1];
    //[myfraction setDenominator:3];
    //如果用了@property可以使用.访问
    myfraction.denominator = 3; //相当于[myfraction setDenominator:3];
    
    NSLog(@"The value of myFraction is :");
    [myfraction print];
    
    
    //调用多个参数的函数
    [myfraction setAll: 3 denomiator:7];
    [myfraction print];
    
    [Fraction myName];
    
    NSLog(@"denominator is %i",[myfraction denominator]);
}

//第8单元继承
void test_c8()
{
    NSLog(@"\r\n==============test_c8==================\r\n");
    Rectangle * r = [[Rectangle alloc] init];
    [r setWidth:2 andHeight:4];
    NSLog(@"Rectangle: area = %d  perimeter = %d",[r area], [r perimeter]);
    
    Square * s = [[Square alloc] init];
    [s setSide:20];
    NSLog(@"Square: area = %d  perimeter = %d",[s area], [s perimeter]);
    
    
}

//第9单元，多态、动态类型、动态绑定
void test_c9()
{
    //data中可以存储所有类型的对象
    NSLog(@"\r\n==============test_c9==================\r\n");
    id data = NULL;
    
    Rectangle * r = [[Rectangle alloc] init];
    data = r;
    [data setWidth:2 andHeight:4];
    NSLog(@"Rectangle: area = %d  perimeter = %d",[data area], [data perimeter]);
    
    Square * s = [[Square alloc] init];
    data = s;
    [data setSide:20];
    NSLog(@"Square: area = %d  perimeter = %d",[data area], [data perimeter]);
    
    
    
    //===动态类型===
    NSLog(@"[r class] = %@; [Rectangle class] = %@",[r class],[Rectangle class]);
    
    Rectangle * r2 = [[Rectangle alloc] init];
    if([r class]== [r2 class])
    {
        NSLog(@"[r class] == [r2 class]");
    }
    
    if([s isMemberOfClass:[Square class]])
    {
        NSLog(@"s isMemberOfClass:[Square class]");
    }
    
    //selector就是对方法的包装，有了SEL就能找到方法的地址，就能调用方法
    if([s respondsToSelector:@selector(setWidth:andHeight:)] == YES)
    {
        NSLog(@"s 会响应 setWidth:andHeight:");
    }
    
    //使用@try @catch
    
    @try
    {
        [data area];
    }
    @catch(NSException * e)
    {
        NSLog(@"catch %@ %@", [e name],[e reason]);
    }
    @finally
    {
        NSLog(@"finally block");
    }
}

//第9单元，多态、动态类型、动态绑定
void test_c10()
{
    //data中可以存储所有类型的对象
    NSLog(@"\r\n==============test_c10==================\r\n");
    
    //使用initWith
    Fraction * f = [[Fraction alloc] initWith:3 denomiator:4 ];
    NSLog(@"denominator is %i",[f denominator]);
    
    
    
    //测试static extern
    
    Fraction * a, * b, * c;
    a = [[Fraction allocF] init];
    b = [[Fraction allocF] init];
    c = [[Fraction allocF] init];
    
    NSLog(@"Fractions allocated: %i",[Fraction count]);
    
}
int main(int argc,char * argv[])
{
    //@autoreleasepool 自动释放池:在应用创建新对象时，系统能有效管理应用所使用的内存
    @autoreleasepool{
       
//        test_c3();
//        test_c8();
//        test_c9();
        test_c10();
    }
}
