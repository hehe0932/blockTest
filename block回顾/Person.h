//
//  Person.h
//  block回顾
//
//  Created by chenlishuang on 17/7/11.
//  Copyright © 2017年 chenlishuang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
/** 吃饭block */
//@property(nullable,copy)void(^eat)();
//
//- (void)eat:(void(^)())block;

//- (void(^)(int x))run;
- (Person *(^)(int x))run;
@end
