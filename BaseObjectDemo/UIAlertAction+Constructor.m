//
//  UIAlertAction+Constructor.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import "UIAlertAction+Constructor.h"

@implementation UIAlertAction (Constructor)

+ (instancetype)defaultStyleActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler {
    
    return [UIAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:handler];
}

+ (instancetype)cancelStyleActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler {
    
    return [UIAlertAction actionWithTitle:title style:UIAlertActionStyleCancel handler:handler];
}

+ (instancetype)destructiveStyleActionWithTitle:(NSString *)title handler:(void (^)(UIAlertAction *action))handler {
    
    return [UIAlertAction actionWithTitle:title style:UIAlertActionStyleDestructive handler:handler];
}

@end
