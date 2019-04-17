//
//  HexColors.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//  64进制颜色和8位rgb颜色 需要结合 UIColor+RepresentInHex.h 分类使用

#import "TargetConditionals.h"

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
#import <UIKit/UIKit.h>
#define HXColor UIColor
#else
#import <Cocoa/Cocoa.h>
#define HXColor NSColor
#endif

@interface HXColor (HexColorAddition)

+ (HXColor *)colorWithHexString:(NSString *)hexString;
+ (HXColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

+ (HXColor *)colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue;
+ (HXColor *)colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha;

- (NSString *)representInHex; // like @"#F0F0F0"
- (NSArray *)representValuesInHex; // like @[@(1.f), @"#F0F0F0"]

@end

