//
//  OfferViewController.m
//  BBQuniversuty
//
//  Created by guest on 2014/08/24.
//  Copyright (c) 2014年 TeamYakult. All rights reserved.
//

#import "OfferViewController.h"
#import "UIColor+FlatUI.h"
#import "FUIButton.h"
#import "UIBarButtonItem+FlatUI.h"
#import "UINavigationBar+FlatUI.h"
#import "UIFont+FlatUI.h"

@interface OfferViewController ()

@end

@implementation OfferViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
        [self.navigationController.navigationBar configureFlatNavigationBarWithColor:[UIColor turquoiseColor]];
    
    self.mybutton1.buttonColor = [UIColor turquoiseColor];
    self.mybutton1.shadowColor = [UIColor greenSeaColor];
    self.mybutton1.shadowHeight = 3.0f;
    self.mybutton1.cornerRadius = 6.0f;
    self.mybutton1.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [self.mybutton1 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [self.mybutton1 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    self.mybutton2.buttonColor = [UIColor turquoiseColor];
    self.mybutton2.shadowColor = [UIColor greenSeaColor];
    self.mybutton2.shadowHeight = 3.0f;
    self.mybutton2.cornerRadius = 6.0f;
    self.mybutton2.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [self.mybutton2 setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [self.mybutton2 setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    //検索結果表示画面「戻る」を表示する
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
    barButton.title = @"";
    self.navigationItem.backBarButtonItem = barButton;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
