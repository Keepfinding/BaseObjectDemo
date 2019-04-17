//
//  NSObject+PropertiesInfomation.h
//  RuntimeModel
//
//  Created by Stephen Hu on 2019/4/12.
//  Copyright © 2019 idress. All rights reserved.
//  获取属性信息

#import <Foundation/Foundation.h>

@interface PropetyInfomation : NSObject

@property (nonatomic, strong) NSString *propertyName;
@property (nonatomic, strong) NSString *propertyRealType;
@property (nonatomic)         Class     propertyClass;

@property (nonatomic, strong) NSString *propertyAttributes;
@property (nonatomic, strong) NSString *typeAttribute;
@property (nonatomic, strong) NSString *propertyType;

@end

@interface NSObject (PropertiesInfomation)

+ (NSMutableArray <PropetyInfomation *> *)propetyInfomations;

@end
