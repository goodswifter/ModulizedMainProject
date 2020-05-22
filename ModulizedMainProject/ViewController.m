//
//  ViewController.m
//  ModulizedMainProject
//
//  Created by zhongaidong on 2020/4/15.
//  Copyright © 2020 jingshonline. All rights reserved.
//

#import "ViewController.h"
#import <CTMediator.h>
#import "CTMediator+ADMine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/// 跳转到我的模块的案例列表页面
- (IBAction)jump2MineCaseListAction {
    // Objective-C -> Category -> Objective-C
    UIViewController *viewController = [[CTMediator sharedInstance] ADMine_Category_ViewControllerWithCallback:^(NSString *result) {
        NSLog(@"%@", result);
    }];
    [self.navigationController pushViewController:viewController animated:YES];
}

@end
