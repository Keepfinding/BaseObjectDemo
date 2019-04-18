//
//  UIView+ScreensShot.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/18.
//  Copyright © 2019 idress. All rights reserved.
//

#import "UIView+ScreensShot.h"

@implementation UIView (ScreensShot)

- (UIImage *)screenShot {
    
    if (self && self.frame.size.height && self.frame.size.width) {
        
        UIGraphicsBeginImageContextWithOptions(self.frame.size, NO, 0);
        [self.layer renderInContext:UIGraphicsGetCurrentContext()];
        UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image;
    } else {
        return nil;
    }
}
@end
