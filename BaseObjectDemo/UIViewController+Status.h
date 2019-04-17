//
//  UIViewController+Status.h
//  Animations
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Status)

/**
 To check, that this controller is pushed from NavigationController.
 检查这个控制器是否是从导航控制器跳转过来的
 @return Is pushed from NavigationController or not.
 */
- (BOOL)isPushedFromNavigationController;

@end
