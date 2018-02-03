//
//  c10_fraction+mathops.m
//  oc_learning
//
//  Created by junjun on 2018/2/3.
//  Copyright © 2018年 junjun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "c11_fraction+mathops.h"

@implementation Fraction(MathOps)

-(Fraction *) mul: (Fraction *) f
{
    Fraction * r = [[Fraction alloc] init];
    r.numerator = self.numerator * f.numerator;
    r.denominator = self.denominator * f.denominator;
    return r;
}

@end
