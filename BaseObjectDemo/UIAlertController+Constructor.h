//
//  UIAlertController+Constructor.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIAlertController (Constructor)

/**
 构造一个UIAlertController

 @param controller 弹出Vc
 @param title 标题
 @param preferredStyle 样式
 @param alertActionsBlock action回调
 @param completion completion description
 */
+ (void)alertControllerShowInController:(UIViewController *)controller
                                  title:(NSString *)title
                                message:(NSString *)message
                         preferredStyle:(UIAlertControllerStyle)preferredStyle
                      alertActionsBlock:(void (^)(NSMutableArray <UIAlertAction *> *alertActions))alertActionsBlock
                             completion:(void (^)(void))completion;

/**
 构造一个UIAlertController

 @param controller 弹出Vc
 @param title 标题
 @param message 信息
 @param alertActionsBlock action回调
 @param completion completion description
 */
+ (void)alertStyleShowInController:(UIViewController *)controller
                             title:(NSString *)title
                           message:(NSString *)message
                 alertActionsBlock:(void (^)(NSMutableArray <UIAlertAction *> *alertActions))alertActionsBlock
                        completion:(void (^)(void))completion;

/**
 构造一个UIAlertController

 @param controller 弹出Vc
 @param title 标题
 @param message 信息
 @param alertActionsBlock action回调
 @param completion completion description
 */
+ (void)actionSheetStyleShowInController:(UIViewController *)controller
                                   title:(NSString *)title
                                 message:(NSString *)message
                       alertActionsBlock:(void (^)(NSMutableArray <UIAlertAction *> *alertActions))alertActionsBlock
                              completion:(void (^)(void))completion;
@end

