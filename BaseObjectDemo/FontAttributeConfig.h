//
//  FontAttributeConfig.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "AttributedStringConfig.h"

@interface FontAttributeConfig : AttributedStringConfig

@property (nonatomic, strong) UIFont *font;

+ (instancetype)configWithFont:(UIFont *)font range:(NSRange)range;
+ (instancetype)configWithFont:(UIFont *)font;
@end

