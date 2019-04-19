//
//  ForegroundColorAttributeConfig.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "AttributedStringConfig.h"

@interface ForegroundColorAttributeConfig : AttributedStringConfig

@property (nonatomic, strong) UIColor *color;

+ (instancetype)configWithColor:(UIColor *)color range:(NSRange)range;
+ (instancetype)configWithColor:(UIColor *)color;
@end

