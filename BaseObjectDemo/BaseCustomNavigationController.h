//
//  BaseCustomNavigationController.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/11.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseCustomViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseCustomNavigationController : UINavigationController
/**
 根据 BaseCustomViewController 获取导航Vc

 @param rootViewController 根控制器
 @param hidden 是否隐藏导航栏
 @return BaseCustomNavigationController
 */
- (instancetype)initWithRootViewController:(BaseCustomViewController *)rootViewController setNavigationBarHidden:(BOOL)hidden;
@end

NS_ASSUME_NONNULL_END
