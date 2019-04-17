//
//  UIColor+RepresentInHex.h
//  Animations
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//  返回颜色的十六进制数字符串

#import <UIKit/UIKit.h>

@interface UIColor (RepresentInHex)

/**
 Get Hex value from color.

 @return The hex string value.
 */
- (NSString *)representInHex;

@end
