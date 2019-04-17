//
//  NSString+Range.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/17.
//  Copyright © 2019 idress. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Range)

/**
 在给定的一个字符串内的固定rangge找到与给定的字符串匹配的range

 @param searchString 要匹配的字符串
 @param mask A mask specifying search options. The following options may be specified by combining them with the C bitwise OR operator: NSCaseInsensitiveSearch, NSLiteralSearch, NSBackwardsSearch, NSAnchoredSearch. See String Programming Guide for details on these options.
 @param range 匹配范围
 @return Ranges.
 */
- (NSArray <NSValue *> *)rangesOfString:(NSString *)searchString options:(NSStringCompareOptions)mask serachRange:(NSRange)range;
@end

NS_ASSUME_NONNULL_END
