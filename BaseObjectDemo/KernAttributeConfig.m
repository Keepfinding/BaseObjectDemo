//
//  KernAttributeConfig.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "KernAttributeConfig.h"

@implementation KernAttributeConfig

- (NSString *)attributeName {
    
    return NSKernAttributeName;
}

- (id)attributeValue {
    
    return self.kern;
}

+ (instancetype)configWithKern:(NSNumber *)kern range:(NSRange)range {
    
    KernAttributeConfig *config = [[self class] new];
    config.kern                 = kern;
    config.effectiveStringRange = range;
    return config;
}

+ (instancetype)configWithKern:(NSNumber *)kern {
    
    KernAttributeConfig *config = [[self class] new];
    config.kern                 = kern;
    return config;
}
@end
