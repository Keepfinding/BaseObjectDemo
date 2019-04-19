//
//  NSMutableAttributedString+AttributedStringConfig.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "NSMutableAttributedString+AttributedStringConfig.h"

@implementation NSMutableAttributedString (AttributedStringConfig)

- (void)addStringAttribute:(AttributedStringConfig *)stringAttribute {
    
    [self addAttribute:stringAttribute.attributeName
                 value:stringAttribute.attributeValue
                 range:stringAttribute.effectiveStringRange];
}

- (void)removeStringAttribute:(AttributedStringConfig *)stringAttribute {
    
    [self removeAttribute:stringAttribute.attributeName
                    range:stringAttribute.effectiveStringRange];
}

+ (instancetype)mutableAttributedStringWithString:(NSString *)string
                                           config:(void (^)(NSString *string, NSMutableArray <AttributedStringConfig *> *configs))configBlock {
    NSMutableAttributedString *atbString = [[NSMutableAttributedString alloc] initWithString:string];
    NSMutableArray            *array     = nil;
    if (configBlock) {
        array = [NSMutableArray array];
        configBlock(string, array);
    }
    [array enumerateObjectsUsingBlock:^(AttributedStringConfig *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [atbString addStringAttribute:obj];
    }];
    return atbString;
}

@end
