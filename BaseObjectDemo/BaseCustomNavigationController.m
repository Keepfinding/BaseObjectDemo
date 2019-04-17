//
//  BaseCustomNavigationController.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/11.
//  Copyright © 2019 idress. All rights reserved.
//

#import "BaseCustomNavigationController.h"

@interface BaseCustomNavigationController ()
@end
@implementation BaseCustomNavigationController

- (instancetype)initWithRootViewController:(BaseCustomViewController *)rootViewController setNavigationBarHidden:(BOOL)hidden {
    
    BaseCustomNavigationController *ncController = [[[self class] alloc] initWithRootViewController:rootViewController];
//    [rootViewController useInteractivePopGestureRecognizer];
    [ncController setNavigationBarHidden:hidden animated:NO];
    return ncController;
}
- (void)dealloc {
#ifdef DEBUG
    printf("[⚠️] Did released the [ Nav - %s ] .\n", NSStringFromClass(self.class).UTF8String);
#endif
}


@end
