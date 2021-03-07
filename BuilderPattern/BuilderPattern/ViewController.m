//
//  ViewController.m
//  BuilderPattern
//  声明方式2种：直接和间接
//  Created by haijunyan on 2021/2/4.
//  Copyright © 2021年 haijunyan. All rights reserved.
//

#import "ViewController.h"

#import "Builder.h"

#import "Engine.h"
#import "Wheels.h"
#import "Door.h"

@interface ViewController ()

@property (nonatomic, strong) Builder *builder;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [[Engine new] build];

    //创建组装者
    self.builder = [[Builder alloc] init];
    //指定承包商
    self.builder.engine = [[Engine alloc] init];
    self.builder.wheels = [[Wheels alloc] init];
    self.builder.door   = [[Door alloc] init];

    // 构建所有的部件
    [self.builder buildAllParts];
    
    //获取产品
    NSLog(@"%@", self.builder.productsInfo);

}

@end
