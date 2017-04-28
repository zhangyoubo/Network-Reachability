//
//  UIAlertController+category.m
//  delete StoryBoaord LaunchScreen
//
//  Created by 张友波 on 17/3/22.
//  Copyright © 2017年 张友波. All rights reserved.
//

#import "UIAlertController+AlertView.h"

@implementation UIAlertController (AlertView)

#pragma mark - Utility methods

/*
 * Utility selector to show an alert with a title, a message and a button to dimiss.
 */
+ (void)showAlertWithTitle:(NSString *)title
              message:(NSString *)message
               target:(id)target
              handler:(UIAlertControllerHandler)handler {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        handler(0);
        
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        handler(1);
        
    }]];
    
    [target presentViewController:alertController animated:YES completion:nil];
    
}

+ (void)showAlertWithTitle:(NSString *)title
              message:(NSString *)message
               target:(id)target
    cancelButtonTitle:(NSString *)cancelButtonTitle
    otherButtonTitles:(NSString *)otherButtonTitles
              handler:(UIAlertControllerHandler)handler {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alertController addAction:[UIAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        handler(0);
        
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:otherButtonTitles style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        handler(1);
        
    }]];
    
    [target presentViewController:alertController animated:YES completion:nil];

}

+ (void)showAlertErrorWithMessage:(NSString *)message
                      target:(id)target
                     handler:(UIAlertControllerHandler)handler{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Error" message:message preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        handler(0);
        
    }]];
    
    [target presentViewController:alertController animated:YES completion:nil];
    
}

+ (void)showAlertWarningWithMessage:(NSString *)message
                        target:(id)target
                       handler:(UIAlertControllerHandler)handler{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Warning" message:message preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
        handler(0);
    }]];
    
    
    [target presentViewController:alertController animated:YES completion:nil];
}

+ (void)showAlertTextFieldWithTitle:(NSString *)title
                            message:(NSString *)message
                             target:(id)target
                            handler:(UIAlertControllerHandler)handler
                          tfhandler:(UIAlertTextFieldHandler)tfhandler{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        handler(0);
        
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        handler(1);
        
    }]];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        
        tfhandler(textField);
        
    }];
    [target presentViewController:alertController animated:YES completion:nil];
}

+ (void)showAlertAcountPassWordWithTitle:(NSString *)title
                                 message:(NSString *)message
                                  target:(id)target
                                 handler:(UIAlertControllerHandler)handler
                               tfhandler:(UIAlertTextFieldHandler)tfhandler{
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        handler(0);
        
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        handler(1);
        
    }]];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.tag = acountType;
        tfhandler(textField);
        
    }];
    [alertController addTextFieldWithConfigurationHandler:^(UITextField * _Nonnull textField) {
        textField.tag = passwordType;
        tfhandler(textField);
        
    }];
    [target presentViewController:alertController animated:YES completion:nil];
}

@end











