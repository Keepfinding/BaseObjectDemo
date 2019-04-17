//
//  NSString+HexUnicode.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/16.
//  Copyright © 2019 idress. All rights reserved.
//

#import "NSString+HexUnicode.h"

@implementation NSString (HexUnicode)

+ (NSString *)unicodeWithHexString:(NSString *)hexString {
    
    unsigned int codeValue;
    [[NSScanner scannerWithString:hexString] scanHexInt:&codeValue];
    return [NSString stringWithFormat:@"%C", (unichar)codeValue];;
}
@end
