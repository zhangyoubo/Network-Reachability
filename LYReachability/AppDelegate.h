//
//  AppDelegate.h
//  LYReachability
//
//  Created by 张友波 on 17/4/28.
//  Copyright © 2017年 张友波. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Reachability.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) Reachability *hostReach;
@property (assign, nonatomic) BOOL         isReachable;


@end

