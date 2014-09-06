//

//  TableViewCell.h

//  Test

//

//  Created by 大田祐輔 on 2014/08/24.

//  Copyright (c) 2014年 TemaYakult. All rights reserved.

//



#import <UIKit/UIKit.h>

#import "UIColor+FlatUI.h"

#import "FUIButton.h"

#import "UIBarButtonItem+FlatUI.h"

#import "UINavigationBar+FlatUI.h"

#import "UIFont+FlatUI.h"



@interface SmartCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *image1;

@property (weak, nonatomic) IBOutlet UIImageView *image2;

@property (strong, nonatomic) IBOutlet FUIButton *button;

@property (weak, nonatomic) IBOutlet UILabel *text1;

@property (weak, nonatomic) IBOutlet UILabel *text2;

@property (weak, nonatomic) IBOutlet UILabel *text3;

@property (weak, nonatomic) IBOutlet UILabel *text4;



@end
