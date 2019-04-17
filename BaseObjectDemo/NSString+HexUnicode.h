//
//  NSString+HexUnicode.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/16.
//  Copyright © 2019 idress. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (HexUnicode)
/**
 把hex字符串例如 '0xF181' 转成UInicode '\u{F181}'.

 @param hexString hex字符串 如：'0xF181'
 @return unicode
 */
+ (NSString *)unicodeWithHexString:(NSString *)hexString;
@end

NS_ASSUME_NONNULL_END
