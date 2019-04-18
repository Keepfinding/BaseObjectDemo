//
//  UIView+ScreensShot.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/18.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (ScreensShot)
/**
 截图

 @return 返回生成的图片
 */
- (UIImage *)screenShot;
@end

NS_ASSUME_NONNULL_END
