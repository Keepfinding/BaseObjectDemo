//
//  UIView+ConvenientMethod.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "UIView+ConvenientMethod.h"

@implementation UIView (ConvenientMethod)

+ (UIView *)lineViewWithFrame:(CGRect)frame color:(UIColor *)color {
    
    UIView *line         = [[UIView alloc] initWithFrame:frame];
    line.backgroundColor = color;
    return line;
}
+ (UIView *)lineViewWithFrame:(CGRect)frame color:(UIColor *)color tag:(NSInteger)tag {
    
    UIView *line         = [[UIView alloc] initWithFrame:frame];
    line.backgroundColor = color;
    line.tag             = tag;
    return line;
}
@end
