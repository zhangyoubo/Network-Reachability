//
//  UIAlertController+category.h
//  delete StoryBoaord LaunchScreen
//
//  Created by 张友波 on 17/3/22.
//  Copyright © 2017年 张友波. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, textFieldType) {
    acountType=0,
    passwordType,
};

typedef void(^UIAlertControllerHandler)(NSInteger buttonIndex);
typedef void(^UIAlertTextFieldHandler)(UITextField *textField);

@interface UIAlertController (AlertView)

@property(nonatomic,assign) textFieldType tfType;

/**
 * Utility selector to show an alert with a title, a message and a button to dimiss.
 *
 * @param title The title of the alert.
 * @param message The message to show in the alert.
 * @param handler The handler that will be invoked in user interaction.
 */
+ (void)showAlertWithTitle:(NSString *)title
              message:(NSString *)message
               target:(id)target
              handler:(UIAlertControllerHandler)handler;


+ (void)showAlertWithTitle:(NSString *)title
              message:(NSString *)message
               target:(id)target
    cancelButtonTitle:(NSString *)cancelButtonTitle
    otherButtonTitles:(NSString *)otherButtonTitles
              handler:(UIAlertControllerHandler)handler;
/**
 * Utility selector to show an alert with an "Error" title, a message and a button to dimiss.
 *
 * @param message The message to show in the alert.
 * @param handler The handler that will be invoked in user interaction.
 */
+ (void)showAlertErrorWithMessage:(NSString *)message
                      target:(id)target
                     handler:(UIAlertControllerHandler)handler;

/**
 * Utility selector to show an alert with a "Warning" title, a message and a button to dimiss.
 *
 * @param message The message to show in the alert.
 * @param handler The handler that will be invoked in user interaction.
 */
+ (void)showAlertWarningWithMessage:(NSString *)message
                        target:(id)target
                       handler:(UIAlertControllerHandler)handler;


+ (void)showAlertTextFieldWithTitle:(NSString *)title
                   message:(NSString *)message
                    target:(id)target
                   handler:(UIAlertControllerHandler)handler
                 tfhandler:(UIAlertTextFieldHandler)tfhandler;

+ (void)showAlertAcountPassWordWithTitle:(NSString *)title
                            message:(NSString *)message
                             target:(id)target
                            handler:(UIAlertControllerHandler)handler
                               tfhandler:(UIAlertTextFieldHandler)tfhandler;

@end










