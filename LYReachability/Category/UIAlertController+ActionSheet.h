//
//  UIAlertController+ActionSheet.h
//  delete StoryBoaord LaunchScreen
//
//  Created by 张友波 on 17/3/22.
//  Copyright © 2017年 张友波. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^UIActionSheetHandler)(NSInteger buttonIndex);

@interface UIAlertController (ActionSheet)


+ (void)showSheettWithTitle:(NSString *)title
                   message:(NSString *)message
                    target:(id)target
                   handler:(UIActionSheetHandler)handler;


+ (void)showSheetWithTitle:(NSString *)title
                   message:(NSString *)message
                    target:(id)target
         cancelButtonTitle:(NSString *)cancelButtonTitle
         otherButtonTitles:(NSString *)otherButtonTitles
                   handler:(UIActionSheetHandler)handler;


@end
