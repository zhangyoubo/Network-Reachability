//
//  UIAlertController+ActionSheet.m
//  delete StoryBoaord LaunchScreen
//
//  Created by 张友波 on 17/3/22.
//  Copyright © 2017年 张友波. All rights reserved.
//

#import "UIAlertController+ActionSheet.h"

@implementation UIAlertController (ActionSheet)

+ (void)showSheettWithTitle:(NSString *)title
                    message:(NSString *)message
                     target:(id)target
                    handler:(UIActionSheetHandler)handler{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        handler(0);
        
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        handler(1);
        
    }]];
    
    [target presentViewController:alertController animated:YES completion:nil];
}


+ (void)showSheetWithTitle:(NSString *)title
                   message:(NSString *)message
                    target:(id)target
         cancelButtonTitle:(NSString *)cancelButtonTitle
         otherButtonTitles:(NSString *)otherButtonTitles
                   handler:(UIActionSheetHandler)handler{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alertController addAction:[UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        handler(0);
        
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:otherButtonTitles style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        handler(1);
        
    }]];
    
    [target presentViewController:alertController animated:YES completion:nil];
    
}

@end
