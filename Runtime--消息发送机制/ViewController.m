//
//  ViewController.m
//  Runtime--消息发送机制
//
//  Created by 少朋刘 on 2017/11/7.
//  Copyright © 2017年 少朋刘. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /*
     1. alloc分配内存空间
     2. init初始化
     */
//    Person *p = [[Person alloc] init];
//    Person *p = objc_msgSend([Person class], @selector(alloc));
    Person *p = objc_msgSend(objc_getClass("Person"), sel_registerName("alloc"));
    p = [p init];
    
//    [p performSelector:@selector(eat)];
    objc_msgSend(p, @selector(eat));
    
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
