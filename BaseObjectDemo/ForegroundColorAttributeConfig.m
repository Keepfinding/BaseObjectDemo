//
//  ForegroundColorAttributeConfig.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "ForegroundColorAttributeConfig.h"

@implementation ForegroundColorAttributeConfig
- (NSString *)attributeName {
    
    return NSForegroundColorAttributeName;
}

- (id)attributeValue {
    
    if (self.color) {
        return self.color;
    } else {
        return [UIColor blackColor];
    }
}

+ (instancetype)configWithColor:(UIColor *)color range:(NSRange)range {
    
    ForegroundColorAttributeConfig *config = [[self class] new];
    config.color                           = color;
    config.effectiveStringRange            = range;
    return config;
}

+ (instancetype)configWithColor:(UIColor *)color {
    
    ForegroundColorAttributeConfig *config = [[self class] new];
    config.color                           = color;
    return config;
}
@end
