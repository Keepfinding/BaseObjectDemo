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
#import "UIView+UserInteraction.h"
#import "UIView+GlowView.h"
#import "UIView+shake.h"
#import "UIView+AnimationPracticalMethod.h"
#import "UIView+DebugFrame.h"
#import "LinearCarouseView.h"
#import "UIView+SetRect.h"
#import "DeviceInfo.h"
#import "PNGManager.h"
#import "AttributedStringConfigHelper.h"

@interface OneViewController ()<iCarouselViewDelegate>
@property (nonatomic, weak  ) UIButton *shakeBtn;
@end

@implementation OneViewController {
    LinearCarouseView *_lineCarouseView;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.shakeBtn shake];
    [_lineCarouseView reloadData];
    [UIView animateWithDuration:0.5f animations:^{
        self->_lineCarouseView.alpha   = 1.f;
    }];
    NSLog(@"我%@刘海屏幕",DeviceInfo.isFringeScreen ? @"是" : @"不是");
    [PNGManager createPNGsWithSourceImage:[UIImage imageNamed:@"bg1.png"] pngsBlock:^(NSMutableArray<PNG *> *pngs) {
        
    }];
}
- (void)setupSubViews {
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *btn = [UIButton buttonWithFrame:CGRectMake(50, 80, 80, 50) configBlock:^(UIButton *button) {
        btnitemStyle *btnStyle = [btnitemStyle new];
        button.itemStyle = btnStyle;
        [button setNormalTitle:@"点我呀~"];
        [button setNormalTitleColor:[UIColor whiteColor]];
    } eventBlock:^(UIButton *button) {
        NSLog(@"我被点了");
        [button shake];
//        [self.view shake];
        [button alpha:.2 duration:.5 animated:YES];
    }];
    self.shakeBtn = btn;
    
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn2 setNormalTitleColor:[UIColor blackColor]];
    [btn2 setNormalTitle:@"我被禁止交互了"];
    [btn2 blockEvent:^(UIButton *button) {
        NSLog(@"嗯，是你");
    }];
    btn2.frame = CGRectMake(50, 140, 200, 50);
    [btn2 showOutlineWithColor:[UIColor blueColor]];
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
    imgv.image = [[UIImage imageNamed:@"dog1.jpg"] blendImage:[UIImage imageNamed:@"dog2.jpg"] blendMode:kCGBlendModeNormal alpha:0.5];
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
    
    _lineCarouseView          = [[LinearCarouseView alloc] initWithFrame:CGRectMake(0, 0, Width, self.view.height / 2.f - 40.f)];
    _lineCarouseView.bottom   = self.view.bottom;
    _lineCarouseView.delegate = self;
    _lineCarouseView.alpha    = 0.f;
    _lineCarouseView.adapters = @[[self iCarouselAdapterWithImageName:@"dog1.jpg"],
                                  [self iCarouselAdapterWithImageName:@"dog2.jpg"]];
    
    UILabel *attriLabel = [UILabel new];
    attriLabel.numberOfLines = 2;
    attriLabel.frame = CGRectMake(50, 200, 250, 80);
    attriLabel.attributedText = [self makeAString];
    
    // 禁止掉btn2 的交互通过view的分类
//    [btn2 disableUserInteraction];
    // 禁止self.view的交互
//    [self.view disableUserInteraction];
    [self.view addSubview:imgv];
//    [self.view addSubview:imgv1];
//    [self.view addSubview:imgv2];
    [self.view addSubview:btn];
    [self.view addSubview:btn2];
    [self.view addSubview:btn3];
    [self.view addSubview:label];
    [self.view addSubview:_lineCarouseView];
    [self.view addSubview:attriLabel];
    // 添加辉光
    label.glowRadius            = @(2.f);
    label.glowOpacity           = @(0.75f);
    label.glowColor             = [[UIColor redColor] colorWithAlphaComponent:1.f];
    
    label.glowDuration          = @(1.f);
    label.hideDuration          = @(1.f);
    label.glowAnimationDuration = @(1.f);
    [label createGlowLayer];
    [label insertGlowLayer];
    [label startGlowLoop];
}
- (iCarouselAdapter *)iCarouselAdapterWithImageName:(NSString *)name {
    
    iCarouselAdapter *adapter = [iCarouselAdapter new];
    adapter.data              = name;
    
    return adapter;
}

- (NSAttributedString *)makeAString {

    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
//    paragraph.tailIndent  = -30;
//    paragraph.lineSpacing = 30;
//    paragraph.alignment = NSTextAlignmentCenter;
//    paragraph.firstLineHeadIndent = 30;
    paragraph.lineBreakMode = NSLineBreakByTruncatingTail;
    NSMutableAttributedString *richString = [NSMutableAttributedString mutableAttributedStringWithString:@"测试富文本:就是可以分设置文字的颜色字体，一段文字可以很花哨" config:^(NSString *string, NSMutableArray<AttributedStringConfig *> *configs) {
        [configs addObject:[FontAttributeConfig configWithFont:[UIFont systemFontOfSize:20] range:NSMakeRange(0, 5)]];
        [configs addObject:[FontAttributeConfig configWithFont:[UIFont systemFontOfSize:16] range:NSMakeRange(5,string.length - 5)]];
        [configs addObject:[ForegroundColorAttributeConfig configWithColor:[UIColor blueColor]range:NSMakeRange(0, 5)]];
        [configs addObject:[ForegroundColorAttributeConfig configWithColor:[UIColor redColor]range:NSMakeRange(5,string.length - 5)]];
        [configs addObject:[ParagraphAttributeConfig configWithParagraphStyle:paragraph range:NSMakeRange(0,string.length)]];
    }];
    return richString;
}
@end
