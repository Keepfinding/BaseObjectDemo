//
//  NSAttributedString+AttributedStringConfig.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "NSAttributedString+AttributedStringConfig.h"

@implementation NSAttributedString (AttributedStringConfig)

+ (instancetype)attributedStringWithString:(NSString *)string
                                    config:(void (^)(NSMutableArray <AttributedStringConfig *> *configs))configBlock {
    
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
    NSAttributedString *atbString = [[NSAttributedString alloc] initWithString:string attributes:attributesDictionary];
    return atbString;
}

@end
