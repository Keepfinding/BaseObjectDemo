//
//  UIViewController+Status.m
//  Animations
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import "UIViewController+Status.h"

@implementation UIViewController (Status)

- (BOOL)isPushedFromNavigationController {
    
    __block BOOL isPushed = NO;
    
    if (self.navigationController) {
        
        [self.navigationController.viewControllers enumerateObjectsUsingBlock:^(UIViewController *controller, NSUInteger idx, BOOL *stop) {
            
            if ([controller isEqual:self]) {
                
                isPushed = YES;
                *stop    = YES;
            }
        }];
    }
    
    return isPushed;
}

@end
