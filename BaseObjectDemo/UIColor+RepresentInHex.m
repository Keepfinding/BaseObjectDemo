//
//  UIColor+RepresentInHex.m
//  Animations
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import "UIColor+RepresentInHex.h"

@implementation UIColor (RepresentInHex)

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

@end
