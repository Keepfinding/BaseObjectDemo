//
//  NSAttributedString+AttributedStringConfig.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AttributedStringConfig.h"

@interface NSAttributedString (AttributedStringConfig)

/**
 [构造器] 便利的设置不可变富文本对象
 
 @param string 字符串
 @param configBlock 配置的AttributedStringConfig数组
 @return 富文本对象
 */
+ (instancetype)attributedStringWithString:(NSString *)string
                                    config:(void (^)(NSMutableArray <AttributedStringConfig *> *configs))configBlock;
@end

