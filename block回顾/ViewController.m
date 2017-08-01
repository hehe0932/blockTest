//
//  ViewController.m
//  block回顾
//
//  Created by chenlishuang on 17/7/11.
//  Copyright © 2017年 chenlishuang. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
@interface ViewController ()
@property(nullable,strong)Person *p;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //直接打inlineBlock 代码块
    
    int(^sumBlock)(int a,int b) = ^(int x,int y) {
        //代码
        return x+y;
//        NSLog(@"%d",x+y);
    };
    
    sumBlock(10,20);
    
    
    //block开发中使用场景
    //1.Blocl作为属性 合适的时候调用方法
    Person *p = [[Person alloc]init];
//    p.eat = ^(){
//        NSLog(@"执行对象中的block");
//    };
    _p = p;
    //2.参数 外界不调用,留给内部去调用
//    [p eat:^{
//        NSLog(@"吃东西");
//    }];
    //3.返回值
//    [p run:10];
//    void(^block)() = p.run;
//    block();
    //等同于上面
//    p.run(10);
    
    //扩展性****链式编程****
    p.run(11).run(20).run(30);
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    _p.eat();
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
