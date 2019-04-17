//
//  btnitemStyle.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import "btnitemStyle.h"

@implementation btnitemStyle
- (void)makeStyleEffective {
    UIButton *button = self.source;
    button.layer.cornerRadius         = 3.f;
    button.layer.borderColor          = [UIColor blueColor].CGColor;
    button.layer.borderWidth          = 0.5f;
    button.layer.masksToBounds        = YES;
}
@end
