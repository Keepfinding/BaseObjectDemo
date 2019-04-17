//
//  UIAlertAction+Constructor.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIAlertAction (Constructor)
/**
 *  默认样式 action.
 *
 *  @param title   标题.
 *  @param handler Handler.
 *
 *  @return UIAlertAction's object.
 */
+ (instancetype)defaultStyleActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler;

/**
 *  取消样式 action.
 *
 *  @param title   标题.
 *  @param handler Handler.
 *
 *  @return UIAlertAction's object.
 */
+ (instancetype)cancelStyleActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler;

/**
 *  警告样式 style action.
 *
 *  @param title   标题.
 *  @param handler Handler.
 *
 *  @return UIAlertAction's object.
 */
+ (instancetype)destructiveStyleActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler;

@end

// 内联函数快速创建
NS_INLINE UIAlertAction * defaultStyleAction(NSString *title, void (^handler)(UIAlertAction *action)) {
    
    return [UIAlertAction defaultStyleActionWithTitle:title handler:handler];
}

NS_INLINE UIAlertAction * cancelStyleAction(NSString *title, void (^handler)(UIAlertAction *action)) {
    
    return [UIAlertAction cancelStyleActionWithTitle:title handler:handler];
}

NS_INLINE UIAlertAction * destructiveStyleAction(NSString *title, void (^handler)(UIAlertAction *action)) {
    
    return [UIAlertAction destructiveStyleActionWithTitle:title handler:handler];
}

