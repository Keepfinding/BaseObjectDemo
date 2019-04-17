//
//  UILabel+SizeToFit.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//  sizeToFit 返回一个适合的大小并且改变控件的大小，sizeThatFits:会计算出最优的size但是不会改变控件的大小；

#import "UILabel+SizeToFit.h"

@implementation UILabel (SizeToFit)

- (void)sizeToFitWithText:(NSString *)text config:(void (^)(UILabel *label))configBlock {
    
    self.text = text;
    [self sizeToFit];
    
    if (configBlock) {
        
        configBlock(self);
    }
}

- (void)sizeToFitWithAttributedText:(NSAttributedString *)text config:(void (^)(UILabel *label))configBlock {
    
    self.attributedText = text;
    [self sizeToFit];
    
    if (configBlock) {
        
        configBlock(self);
    }
}
@end
