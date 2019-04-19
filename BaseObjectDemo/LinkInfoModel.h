//
//  LinkInfoModel.h
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//
/*
 解析url
 ajmall://app/home?pager=item_detail&target_id=484515418854260736&source_scene=home_store&source_param=9
 
 scheme    : ajmall
 host      : ajmall://app/home
 paramsStr : pager=item_detail&target_id=484515418854260736&source_scene=home_store&source_param=9
 params    : @{@"pager"        : @"item_detail",
 @"target_id"    : @"484515418854260736",
 @"source_scene" : @"home_store",
 @"source_param" : @"9"};
 }
 
 */
#import <Foundation/Foundation.h>

@interface LinkInfoModel : NSObject
@property (nonatomic, readonly) NSString     *scheme;
@property (nonatomic, readonly) NSString     *host;
@property (nonatomic, readonly) NSString     *paramsStr;
@property (nonatomic, readonly) NSDictionary *params; // paramsStr转化过来的

/**
 根据url字符串得到一个LinkInfoModel

 @param urlString url字符串
 @return LinkInfoModel
 */
+ (instancetype)linkInfoModelWithURLStr:(NSString *)urlString;

/**
 根据url得到一个LinkInfoModel

 @param url url
 @return LinkInfoModel
 */
+ (instancetype)linkInfoModelWithURL:(NSURL *)url;
@end
