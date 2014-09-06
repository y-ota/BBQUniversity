//
//  GroupViewController.h
//  BBQuniversuty
//
//  Created by 大田祐輔 on 2014/08/22.
//  Copyright (c) 2014年 TeamYakult. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GroupViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    //次の画面へ渡す引数
    NSString *_arguments;
    NSString *option1;
    NSString *option2;
    NSString *option3;
    NSString *option4;
    NSString *option5;
    NSString *option6;
    NSMutableArray *data;
    
}
@property (nonatomic) NSString *arguments;
@property (nonatomic) NSString *option1;
@property (nonatomic) NSString *option2;
@property (nonatomic) NSString *option3;
@property (nonatomic) NSString *option4;
@property (nonatomic) NSString *option5;
@property (nonatomic) NSString *option6;
@property (nonatomic) NSMutableArray *data;

@end
