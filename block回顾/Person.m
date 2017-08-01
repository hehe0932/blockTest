//
//  Person.m
//  block回顾
//
//  Created by chenlishuang on 17/7/11.
//  Copyright © 2017年 chenlishuang. All rights reserved.
//

#import "Person.h"

@implementation Person
//- (void)eat:(void(^)())block{
//    NSLog(@"Person里面调用block");
//    block();
//}
//- (void(^)(int x))run{
//    //self方法调用者
//    return ^(int x){
//        NSLog(@"跑了%d米",x);
//    };
//}
- (Person *(^)(int x))run{
    //self方法调用者
    return ^Person *(int x){
        NSLog(@"跑了%d米",x);
        return self;
    };
}
@end
