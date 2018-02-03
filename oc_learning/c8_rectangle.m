//
//  c8_rectangle.m
//  oc_learning
//
//  Created by junjun on 2018/1/30.
//  Copyright © 2018年 junjun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "c8_rectangle.h"

@implementation Rectangle

@synthesize width,height;

-(void) setWidth:(int)width andHeight:(int)height
{
    self.width = width;
    self.height = height;
}

-(int) area
{
    return width * height;
}

-(int)perimeter
{
    return (width + height) * 2;
}

@end


@implementation Square

-(void)setSide:(int)side
{
    self.width = side;
    self.height = side;
}

@end
