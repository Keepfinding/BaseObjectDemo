//
//  UIView+UserInteraction.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/18.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (UserInteraction)
/**
 允许交互
 */
- (void)enabledUserInteraction;

/**
 禁止交互
 */
- (void)disableUserInteraction;
@end

NS_ASSUME_NONNULL_END
