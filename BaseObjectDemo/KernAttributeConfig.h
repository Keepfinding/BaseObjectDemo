//
//  KernAttributeConfig.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "AttributedStringConfig.h"

@interface KernAttributeConfig : AttributedStringConfig

@property (nonatomic, strong) NSNumber *kern;

+ (instancetype)configWithKern:(NSNumber *)kern range:(NSRange)range;
+ (instancetype)configWithKern:(NSNumber *)kern;
@end

