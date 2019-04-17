//
//  UIView+SetRect.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  UIScreen width.
 */
#define  Width      UIScreen.mainScreen.bounds.size.width

/**
 *  UIScreen width's 1/2.
 */
#define  HalfWidth  (UIScreen.mainScreen.bounds.size.width / 2.f)

/**
 *  UIScreen height.
 */
#define  Height     UIScreen.mainScreen.bounds.size.height

/**
 *  UIScreen height's 1/2.
 */
#define HalfHeight  (UIScreen.mainScreen.bounds.size.height / 2.f)

/**
 *  Status bar height.
 */
#define  StatusBarHeight      20.f

/**
 *  Navigation bar height.
 */
#define  NavigationBarHeight  44.f

/**
 *  Tabbar height.
 */
#define  TabbarHeight         49.f

/**
 *  Status bar & navigation bar height.
 */
#define  StatusBarAndNavigationBarHeight   (20.f + 44.f)
NS_ASSUME_NONNULL_BEGIN

@interface UIView (SetRect)

/*----------------------
 * 绝对 位置 *
 ----------------------*/

@property (nonatomic) CGPoint viewOrigin;
@property (nonatomic) CGSize  viewSize;

@property (nonatomic) CGFloat x;
@property (nonatomic) CGFloat y;
@property (nonatomic) CGFloat width;
@property (nonatomic) CGFloat height;

@property (nonatomic) CGFloat top;
@property (nonatomic) CGFloat bottom;
@property (nonatomic) CGFloat left;
@property (nonatomic) CGFloat right;

@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

/*----------------------
 * 相对 位置 *
 ----------------------*/

@property (nonatomic, readonly) CGFloat middleX;
@property (nonatomic, readonly) CGFloat middleY;
@property (nonatomic, readonly) CGPoint middlePoint;
@end

NS_ASSUME_NONNULL_END
