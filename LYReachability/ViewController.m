//
//  ViewController.m
//  LYReachability
//
//  Created by 张友波 on 17/4/28.
//  Copyright © 2017年 张友波. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "UIAlertController+AlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor  = [UIColor whiteColor];
    self.title = @"网络监测";
    
    UIButton *btn =[[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 60)];
    btn.center = self.view.center;
    [btn setTitle:@"测试网络" forState:UIControlStateNormal];
    btn.backgroundColor  = [UIColor purpleColor];
    [btn addTarget:self action:@selector(observeNetwork) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

//这样就可以检查到在运行程序时网络突然的中断和连接。
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
    
}

-(void)observeNetwork{
    AppDelegate *appDlg = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if(appDlg.isReachable){
        
        NSLog(@"网络已连接");//执行网络正常时的代码
        
        [UIAlertController showAlertWithTitle:@"网络状况" message:@"网络已连接" target:self handler:^(NSInteger buttonIndex){
            
        }];
        
        
    }else{
        NSLog(@"网络连接异常");//执行网络异常时的代码
        
        [UIAlertController showAlertWithTitle:@"网络状况" message:@"网络已断开" target:self handler:^(NSInteger buttonIndex){
            
        }];
        
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end







