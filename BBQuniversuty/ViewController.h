//  ViewController.h

//  BBQuniversuty

//

//  Created by 小泉 春貴 on 2014/08/21.

//  Copyright (c) 2014年 TeamYakult. All rights reserved.

//



#import <UIKit/UIKit.h>

#import "UIColor+FlatUI.h"

#import "FUIButton.h"

#import "UIBarButtonItem+FlatUI.h"

#import "UINavigationBar+FlatUI.h"

#import "UIFont+FlatUI.h"

//  ViewController.h
//  BBQuniversuty
//
//  Created by 小泉 春貴 on 2014/08/21.
//  Copyright (c) 2014年 TeamYakult. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+FlatUI.h"
#import "FUIButton.h"
#import "UIBarButtonItem+FlatUI.h"
#import "UINavigationBar+FlatUI.h"
#import "UIFont+FlatUI.h"


@interface ViewController : UIViewController<UIPickerViewDelegate, UIPickerViewDataSource>{
    NSArray * tiiki_list;
}
@property (weak, nonatomic) IBOutlet UIPickerView *mypicker;

@property (weak, nonatomic) IBOutlet UINavigationItem *myNavigationbar;

@property (weak, nonatomic) IBOutlet FUIButton *mybutton;
- (IBAction)clickBtn:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIButton *mybutton1;
@property (strong, nonatomic) IBOutlet UIButton *mybutton2;
@property (strong, nonatomic) IBOutlet UIButton *mybutton3;
@property (strong, nonatomic) IBOutlet UIButton *mybutton4;
@property (strong, nonatomic) IBOutlet UIButton *mybutton5;
@property (strong, nonatomic) IBOutlet UIButton *mybutton6;


@end




