//
//  NSString+AttributedStringConfig.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "NSString+AttributedStringConfig.h"

@implementation NSString (AttributedStringConfig)

- (NSMutableAttributedString *)mutableAttributedStringWithStringAttributes:(NSArray <AttributedStringConfig *> *)attributes {
    
    NSMutableAttributedString *attributedString = nil;
    if (self) {
        attributedString = [[NSMutableAttributedString alloc] initWithString:self];
        for (AttributedStringConfig *attribute in attributes) {
            [attributedString addAttribute:[attribute attributeName]
                                     value:[attribute attributeValue]
                                     range:[attribute effectiveStringRange]];
        }
    }
    return attributedString;
}

- (NSAttributedString *)attributedStringWithStringAttributes:(NSArray <AttributedStringConfig *> *)attributes {
    
    NSAttributedString *attributedString = nil;
    if (self) {
        NSMutableDictionary *attributesDictionary = [NSMutableDictionary dictionary];
        for (AttributedStringConfig *attribute in attributes) {
            [attributesDictionary setObject:[attribute attributeValue]
                                     forKey:[attribute attributeName]];
        }
        attributedString = [[NSAttributedString alloc] initWithString:self attributes:attributesDictionary];
    }
    return attributedString;
}

- (NSAttributedString *)attributedStringWithConfigs:(void (^)(NSMutableArray <AttributedStringConfig *> *configs))configBlock {
    
    NSMutableArray      *array                = nil;
    NSMutableDictionary *attributesDictionary = nil;
    if (configBlock) {
        array                = [NSMutableArray array];
        attributesDictionary = [NSMutableDictionary dictionary];
        configBlock(array);
        [array enumerateObjectsUsingBlock:^(AttributedStringConfig *obj, NSUInteger idx, BOOL * _Nonnull stop) {
            [attributesDictionary setObject:obj.attributeValue forKey:obj.attributeName];
        }];
    }
    NSAttributedString *atbString = [[NSAttributedString alloc] initWithString:self attributes:attributesDictionary];
    return atbString;
}
@end
