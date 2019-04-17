//
//  HexColors.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import "HexColors.h"

@implementation HXColor (HexColorAddition)

+ (HXColor *)colorWithHexString:(NSString *)hexString {
    // Check for hash and add the missing hash
    if('#' != [hexString characterAtIndex:0]) {
        hexString = [NSString stringWithFormat:@"#%@", hexString];
    }
    
    CGFloat alpha = 1.0;
    if (5 == hexString.length || 9 == hexString.length) {
        NSString * alphaHex = [hexString substringWithRange:NSMakeRange(1, 9 == hexString.length ? 2 : 1)];
        if (1 == alphaHex.length) alphaHex = [NSString stringWithFormat:@"%@%@", alphaHex, alphaHex];
        hexString = [NSString stringWithFormat:@"#%@", [hexString substringFromIndex:9 == hexString.length ? 3 : 2]];
        unsigned alpha_u = [[self class] hexValueToUnsigned:alphaHex];
        alpha = ((CGFloat) alpha_u) / 255.0;
    }
    
    return [[self class] colorWithHexString:hexString alpha:alpha];
}

+ (HXColor *)colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    if (hexString.length == 0) {
        return nil;
    }
    
    // Check for hash and add the missing hash
    if('#' != [hexString characterAtIndex:0]) {
        hexString = [NSString stringWithFormat:@"#%@", hexString];
    }
    
    // check for string length
    if (7 != hexString.length && 4 != hexString.length) {
        NSString *defaultHex    = [NSString stringWithFormat:@"0xff"];
        unsigned defaultInt = [[self class] hexValueToUnsigned:defaultHex];
        
        HXColor *color = [HXColor colorWith8BitRed:defaultInt green:defaultInt blue:defaultInt alpha:1.0];
        return color;
    }
    
    // check for 3 character HexStrings
    hexString = [[self class] hexStringTransformFromThreeCharacters:hexString];
    
    NSString *redHex    = [NSString stringWithFormat:@"0x%@", [hexString substringWithRange:NSMakeRange(1, 2)]];
    unsigned redInt = [[self class] hexValueToUnsigned:redHex];
    
    NSString *greenHex  = [NSString stringWithFormat:@"0x%@", [hexString substringWithRange:NSMakeRange(3, 2)]];
    unsigned greenInt = [[self class] hexValueToUnsigned:greenHex];
    
    NSString *blueHex   = [NSString stringWithFormat:@"0x%@", [hexString substringWithRange:NSMakeRange(5, 2)]];
    unsigned blueInt = [[self class] hexValueToUnsigned:blueHex];
    
    HXColor *color = [HXColor colorWith8BitRed:redInt green:greenInt blue:blueInt alpha:alpha];
    
    return color;
}

+ (HXColor *)colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue {
    return [[self class] colorWith8BitRed:red green:green blue:blue alpha:1.0];
}

+ (HXColor *)colorWith8BitRed:(NSInteger)red green:(NSInteger)green blue:(NSInteger)blue alpha:(CGFloat)alpha {
    HXColor *color = nil;
#if (TARGET_IPHONE_SIMULATOR || TARGET_OS_IPHONE)
    color = [HXColor colorWithRed:(float)red/255 green:(float)green/255 blue:(float)blue/255 alpha:alpha];
#else
    color = [HXColor colorWithCalibratedRed:(float)red/255 green:(float)green/255 blue:(float)blue/255 alpha:alpha];
#endif
    
    return color;
}

+ (NSString *)hexStringTransformFromThreeCharacters:(NSString *)hexString {
    if(hexString.length == 4) {
        hexString = [NSString stringWithFormat:@"#%1$c%1$c%2$c%2$c%3$c%3$c",
                     [hexString characterAtIndex:1],
                     [hexString characterAtIndex:2],
                     [hexString characterAtIndex:3]];
        
    }
    
    return hexString;
}

+ (unsigned)hexValueToUnsigned:(NSString *)hexValue {
    unsigned value = 0;
    
    NSScanner *hexValueScanner = [NSScanner scannerWithString:hexValue];
    [hexValueScanner scanHexInt:&value];
    
    return value;
}

- (NSString *)representInHex {
    
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    size_t         count      = CGColorGetNumberOfComponents(self.CGColor);
    
    if(count == 2) {
        
        return [NSString stringWithFormat:@"#%02lX%02lX%02lX",
                lroundf(components[0] * 255.0),
                lroundf(components[0] * 255.0),
                lroundf(components[0] * 255.0)];
        
    } else {
        
        return [NSString stringWithFormat:@"#%02lX%02lX%02lX",
                lroundf(components[0] * 255.0),
                lroundf(components[1] * 255.0),
                lroundf(components[2] * 255.0)];
    }
}

- (NSArray *)representValuesInHex {
    
    CGFloat alpha;
    [self getRed:nil green:nil blue:nil alpha:&alpha];
    
    const CGFloat *components = CGColorGetComponents(self.CGColor);
    size_t         count      = CGColorGetNumberOfComponents(self.CGColor);
    
    if(count == 2) {
        
        return @[@(alpha),
                 [NSString stringWithFormat:@"#%02lX%02lX%02lX",
                  lroundf(components[0] * 255.0),
                  lroundf(components[0] * 255.0),
                  lroundf(components[0] * 255.0)]];
        
    } else {
        
        return @[@(alpha),
                 [NSString stringWithFormat:@"#%02lX%02lX%02lX",
                  lroundf(components[0] * 255.0),
                  lroundf(components[1] * 255.0),
                  lroundf(components[2] * 255.0)]];
    }
}
@end
