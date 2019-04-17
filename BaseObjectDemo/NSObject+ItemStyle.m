//
//  NSObject+ItemStyle.m
//  Animations
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import "NSObject+ItemStyle.h"
#import <objc/runtime.h>

@implementation NSObject (ItemStyle)

- (void)setItemStyle:(ItemStyle *)itemStyle {
    
    objc_setAssociatedObject(self, @selector(itemStyle), itemStyle, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    itemStyle.source = self;
    [itemStyle makeStyleEffective];
}

- (ItemStyle *)itemStyle {
    
    return objc_getAssociatedObject(self, _cmd);
}

@end
