//
//  File.m
//  BaseObjectDemo
//
//  Created by Stephen Hu on 2019/4/19.
//  Copyright © 2019 idress. All rights reserved.
//

#import "File.h"

@implementation File

- (instancetype)init {
    
    if (self = [super init]) {
        self.subFiles = [NSMutableArray array];
    }
    return self;
}

- (NSArray <File *> *)allFiles {
    
    NSMutableArray *subFiles = [NSMutableArray array];
    [self rootFile:self array:subFiles];
    return subFiles;
}

- (void)rootFile:(File *)file array:(NSMutableArray *)array {
    
    for (File *subFile in file.subFiles) {
        [array addObject:subFile];
        if (subFile.isDirectory) {
            [self rootFile:subFile array:array];
        }
    }
}

- (NSString *)description {
    
    return [NSString stringWithFormat:@"<%@ : %p> isDirectory[%@] isHiden[%@] %@",
            [self class],
            self,
            (_isDirectory == YES ? @"Y" : @"N"),
            (_isHiden == YES ? @"Y" : @"N"),
            _fileName];
}

@end
