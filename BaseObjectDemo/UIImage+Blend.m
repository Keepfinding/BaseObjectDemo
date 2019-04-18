//
//  UIImage+Blend.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/17.
//  Copyright © 2019 idress. All rights reserved.
//

#import "UIImage+Blend.h"

@implementation UIImage (Blend)

- (UIImage *)blendImage:(UIImage *)blendImage blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha {
    
    CGSize newSize = [self size];
    CGRect rect    = CGRectMake(0, 0, self.size.width, self.size.height);
    UIGraphicsBeginImageContext(newSize);
    [self       drawInRect:rect blendMode:kCGBlendModeNormal alpha:1];
    [blendImage drawInRect:rect blendMode:blendMode          alpha:alpha];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return newImage;
}

- (UIImage *)blendMode:(CGBlendMode)blendMode alpha:(CGFloat)alpha {
    
    CGSize newSize = [self size];
    CGRect rect    = CGRectMake(0, 0, self.size.width, self.size.height);
    UIGraphicsBeginImageContext(newSize);
    [self drawInRect:rect blendMode:blendMode alpha:alpha];
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (UIImage *) imageWithTintColor:(UIColor *)tintColor {

    return [self imageWithTintColor:tintColor blendMode:kCGBlendModeDestinationIn];
}
 
- (UIImage *) imageWithGradientTintColor:(UIColor *)tintColor {

    return [self imageWithTintColor:tintColor blendMode:kCGBlendModeOverlay];
}

- (UIImage *)imageWithTintColor:(UIColor *)tintColor blendMode:(CGBlendMode)blendMode {

    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0f);
    [tintColor setFill];
    CGRect bounds = CGRectMake(0, 0, self.size.width, self.size.height);
    UIRectFill(bounds);
    [self drawInRect:bounds blendMode:blendMode alpha:1.0f];
    if (blendMode != kCGBlendModeDestinationIn) {
        [self drawInRect:bounds blendMode:kCGBlendModeDestinationIn alpha:1.0f];
    }
    UIImage *tintedImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return tintedImage;
}
@end
