//
//  UIView+UserInteraction.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/18.
//  Copyright © 2019 idress. All rights reserved.
//

#import "UIView+UserInteraction.h"
#import <objc/runtime.h>

@interface UIView ()

@property (nonatomic, strong) NSNumber  *userInteractionNumbers;

@end
@implementation UIView (UserInteraction)

#pragma mark ————— public method —————
- (void)enabledUserInteraction {
    
    [self accessUserInteractionNumbers];
    self.userInteractionNumbers = @(self.userInteractionNumbers.integerValue + 1);
    [self accessUserInteraction];
}
- (void)disableUserInteraction {
    
    [self accessUserInteractionNumbers];
    self.userInteractionNumbers = @(self.userInteractionNumbers.integerValue - 1);
    [self accessUserInteraction];
}

#pragma mark ————— private method —————
- (void)accessUserInteractionNumbers {
    
    if (self.userInteractionNumbers == nil) {
        self.userInteractionNumbers = @(0);
    }
}

- (void)accessUserInteraction {
    
    if (self.userInteractionNumbers.integerValue > 0) {
        self.userInteractionEnabled = YES;
    } else {
        self.userInteractionEnabled = NO;
    }
}

#pragma mark ————— getter & setter —————
- (void)setUserInteractionNumbers:(NSNumber *)userInteractionNumbers {
    
    objc_setAssociatedObject(self, @selector(userInteractionNumbers), userInteractionNumbers, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (NSNumber *)userInteractionNumbers {
    
    return objc_getAssociatedObject(self, _cmd);
}
@end