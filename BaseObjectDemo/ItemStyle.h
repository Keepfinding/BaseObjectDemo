//
//  ItemStyle.h
//  ItemStyle
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//  继承这个类提供i控件样式，相同的样式可以复用节省代码
/*例子
 UIButton *submit   = [[UIButton alloc] initWithFrame:CGRectMake(15.f, top + 150.f, Width - 30.f, 45.f)];
 submit.itemStyle   = [SubmitItemStyle style];
 
 在SubmitItemStyle 类内重写makeStyleEffective 方法提供具体的样式
 - (void)makeStyleEffective {
 UIButton *button = self.source;
 button.layer.cornerRadius         = 3.f;
 button.layer.borderColor          = [UIColor colorWithHexString:@"#009BD8"].CGColor;
 button.layer.borderWidth          = 0.5f;
 button.layer.masksToBounds        = YES;
 button.backgroundNormalImage      = [UIImage imageWithSize:CGSizeMake(10, 10) color:[UIColor colorWithHexString:@"#009BD8"]];
 button.backgroundHighlightedImage = [UIImage imageWithSize:CGSizeMake(10, 10) color:[[UIColor colorWithHexString:@"#009BD8"] colorWithAlphaComponent:0.5]];
 button.titleLabel.font            = [UIFont HeitiSCWithFontSize:16.f];
 }
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ItemStyle : NSObject

/**
 The source object to use the style.
 */
@property (nonatomic, weak) id source;

/**
 Get the style object.
 
 @return The style object.
 */
+ (instancetype)style;

/**
 [- Must Overwrite by subclass -]
 
 Make the style effective.
 */
- (void)makeStyleEffective;

@end
