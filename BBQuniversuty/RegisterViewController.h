//
//  RegisterViewController.h
//  BBQuniversuty
//
//  Created by guest on 2014/08/22.
//  Copyright (c) 2014年 TeamYakult. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import "FUIButton.h"

@interface RegisterViewController : UIViewController <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet FUIButton *mybutton;

@property (weak, nonatomic) IBOutlet FBLoginView *loginView;

@end


