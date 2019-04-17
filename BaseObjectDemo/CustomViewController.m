//
//  CustomViewController.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/11.
//  Copyright © 2019 idress. All rights reserved.
//

#import "CustomViewController.h"

@interface CustomViewController ()<UIGestureRecognizerDelegate>

@end

@implementation CustomViewController

- (void)useInteractivePopGestureRecognizer {
    
    self.navigationController.interactivePopGestureRecognizer.delegate = self;
}

- (void)popViewControllerAnimated:(BOOL)animated {
    
    [self.navigationController popViewControllerAnimated:animated];
}

- (void)popToRootViewControllerAnimated:(BOOL)animated {
    
    [self.navigationController popToRootViewControllerAnimated:animated];
}

- (void)dealloc {
    
#ifdef DEBUG
    
    printf("[⚠️] Did released the %s.\n", NSStringFromClass(self.class).UTF8String);
    
#endif
}

#pragma mark ————— setter & getter —————
// 同事重写setter 和 getter 不会默认生成下划线成员变量，需要手动合成
@synthesize enableInteractivePopGestureRecognizer = _enableInteractivePopGestureRecognizer;

- (void)setEnableInteractivePopGestureRecognizer:(BOOL)enableInteractivePopGestureRecognizer {
    
    _enableInteractivePopGestureRecognizer                            = enableInteractivePopGestureRecognizer;
    self.navigationController.interactivePopGestureRecognizer.enabled = enableInteractivePopGestureRecognizer;
}

- (BOOL)enableInteractivePopGestureRecognizer {
    
    return _enableInteractivePopGestureRecognizer;
}
@end
