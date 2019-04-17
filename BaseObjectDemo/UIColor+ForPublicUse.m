//
//  UIColor+ForPublicUse.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import "UIColor+ForPublicUse.h"
#import "HexColors.h"

@implementation UIColor (ForPublicUse)

+ (UIColor *)backgroundColor {
    
    return [UIColor colorWithHexString:@"F7F7F7"];
}

+ (UIColor *)lineColor {
    
    return [UIColor colorWithHexString:@"E8E8E8"];
}
@end
