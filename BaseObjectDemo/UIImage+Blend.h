//
//  UIImage+Blend.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/17.
//  Copyright © 2019 idress. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (Blend)
/**
 混合图片

 @param blendImage 用来混合的image
 @param blendMode 模式
 @param alpha 透明度
 @return 混合之后的image
 */
- (UIImage *)blendImage:(UIImage *)blendImage blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha;
@end

NS_ASSUME_NONNULL_END
