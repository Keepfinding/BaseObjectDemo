//
//  OneViewController.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//

#import "OneViewController.h"
#import "UIButton+Event.h"
#import "UIButton+Inits.h"
#import "UIButton+Style.h"
#import "btnitemStyle.h"
#import "NSObject+ItemStyle.h"
#import "CAShapeLayer+CornerRadius.h"
#import "UILabel+SizeToFit.h"
#import "UIAlertAction+Constructor.h"
#import "UIImage+ImageEffects.h"
#import "UIImage+SolidColor.h"
#import "UIImage+Blend.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)setupSubViews {
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithFrame:CGRectMake(50, 80, 80, 50) configBlock:^(UIButton *button) {
        btnitemStyle *btnStyle = [btnitemStyle new];
        button.itemStyle = btnStyle;
        [button setNormalTitle:@"点我呀~"];
        [button setNormalTitleColor:[UIColor whiteColor]];
    } eventBlock:^(UIButton *button) {
        NSLog(@"我被点了");
    }];
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn2 setNormalTitleColor:[UIColor blackColor]];
    [btn2 setNormalTitle:@"是我"];
    [btn2 blockEvent:^(UIButton *button) {
        NSLog(@"嗯，是你");
    }];
    btn2.frame = CGRectMake(50, 140, 80, 50);
    
    CAShapeLayer *cornerLayer = [CAShapeLayer shapeLayerWithFrame:CGRectMake(0, 0, 80, 50) corners:UIRectCornerTopLeft | UIRectCornerBottomRight radius:30];
    cornerLayer.fillColor = [UIColor greenColor].CGColor;
    [btn.layer insertSublayer:cornerLayer atIndex:0];
    
    UILabel *label = [UILabel new];
    label.frame = CGRectMake(50, 300, 80, 50);
    [label sizeToFitWithText:@"会根据文字" config:^(UILabel * _Nonnull label) {
        label.textColor = [UIColor whiteColor];
    }];

    // 添加一个imageView
    UIImageView *imgv = [[UIImageView alloc] initWithFrame:self.view.bounds];//CGRectMake(50, 100, 200, 300)];
    // 模糊处理
//    imgv.image = [UIImage imageNamed:@"taidi.jpg"].blurImage;
    // 上边加一个模糊视图
//    imgv.image = [[UIImage imageNamed:@"taidi.jpg"] blurImageWithMask:[UIImage imageNamed:@"xiaochai.jpg"]];
    // 局部区域模糊
//    imgv.image = [[UIImage imageNamed:@"taidi.jpg"] blurImageAtFrame:CGRectMake(50, 100 , 100, 100)];
    // 黑白效果
//    imgv.image = [[UIImage imageNamed:@"taidi.jpg"] grayScale];
    // 根据指定的宽度缩放image
//    UIImageView *imgv = [[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"taidi.jpg"] scaleWithFixedWidth:150]];
    // 根据指定的高度缩放image
//    UIImageView *imgv = [[UIImageView alloc] initWithImage:[[UIImage imageNamed:@"taidi.jpg"] scaleWithFixedHeight:200]];
    // 获取image的平均颜色 \ 混合一张image blendMode释义： https://blog.csdn.net/qq_14920635/article/details/75617188
    imgv.image = [[UIImage imageNamed:@"taidi.jpg"] blendImage:[UIImage imageNamed:@"xiaochai.jpg"] blendMode:kCGBlendModeNormal alpha:0.5];
    // 只设置自身的blendMode 但是没感觉有啥区别
//    imgv.image = [[UIImage imageNamed:@"taidi.jpg"] blendMode:kCGBlendModePlusLighter alpha:0.9];
//    self.view.backgroundColor = imgv.image.averageColor;
    
//    UIImageView *imgv1 = [[UIImageView alloc] initWithImage:[imgv.image croppedImageAtFrame:CGRectMake(100, 150, 50, 100)]];
//
//    UIImageView *imgv2 = [[UIImageView alloc] initWithImage:[UIImage imageWithSize:CGSizeMake(1, 1) color:[UIColor greenColor]]];
//    imgv2.frame = CGRectMake(100, 200, 50, 50);
    UIButton *btn3 = [UIButton buttonWithType:UIButtonTypeCustom];
    btn3.frame = CGRectMake(160, 80, 50, 50);
    // 改变颜色
    [btn3 setNormalImage:[[UIImage imageNamed:@"模特"] imageWithTintColor:[UIColor purpleColor]]];
    
    
    [self.view addSubview:imgv];
//    [self.view addSubview:imgv1];
//    [self.view addSubview:imgv2];
    [self.view addSubview:btn];
    [self.view addSubview:btn2];
    [self.view addSubview:btn3];
    [self.view addSubview:label];
}


@end
