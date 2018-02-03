//
//  c8_rectangle.h
//  oc_learning
//
//  Created by junjun on 2018/1/30.
//  Copyright © 2018年 junjun. All rights reserved.
//

#ifndef c8_rectangle_h
#define c8_rectangle_h

@interface Rectangle :NSObject

//只有在@interface中定义的属性才能在子类中访问
@property int width,height;

-(void) setWidth:(int)width andHeight:(int)heihgt;
-(int) area;
-(int) perimeter;

@end

@interface Square :Rectangle
{
    int sice;
}

-(void) setSide:(int) side;

@end

#endif /* c8_rectangle_h */
