//  ViewController.m
//  BBQuniversuty
//
//  Created by 小泉 春貴 on 2014/08/21.
//  Copyright (c) 2014年 TeamYakult. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+FlatUI.h"
#import "FUIButton.h"
#import "UIBarButtonItem+FlatUI.h"
#import "UINavigationBar+FlatUI.h"
#import "UIFont+FlatUI.h"
#import "SVProgressHUD.h"
#import "GroupViewController.h"

@implementation ViewController

@synthesize mybutton1;
@synthesize mybutton2;
@synthesize mybutton3;
@synthesize mybutton4;
@synthesize mybutton5;
@synthesize mybutton6;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.mypicker.dataSource = self;
    self.mypicker.delegate = self;
    tiiki_list = @[@"東京23区",@"東京23区外",@"神奈川",@"埼玉",@"千葉"];
    
    [UIBarButtonItem configureFlatButtonsWithColor:[UIColor cloudsColor]
                                  highlightedColor:[UIColor cloudsColor]
                                      cornerRadius:3];
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
    
    self.myNavigationbar.titleView.tintColor = [UIColor whiteColor];
    
    
    // ボタンの背景画像（通常時（非選択時））
    [mybutton1 setBackgroundImage:[UIImage imageNamed:@"drink"]
                         forState:UIControlStateNormal];
    // ボタンの背景画像（選択時）
    [mybutton1 setBackgroundImage:[UIImage imageNamed:@"drink1.png"]
                         forState:UIControlStateSelected];
    // ボタンタップ時のメソッド
    [mybutton1 addTarget:self
                  action:@selector(didTapToggle1:)
        forControlEvents:UIControlEventTouchUpInside];
    // ボタンをviewに追加
    [self.view addSubview:mybutton1];
    
    
    // ボタンの背景画像（通常時（非選択時））
    [mybutton2 setBackgroundImage:[UIImage imageNamed:@"pool.png"]
                         forState:UIControlStateNormal];
    // ボタンの背景画像（選択時）
    [mybutton2 setBackgroundImage:[UIImage imageNamed:@"pool1.png"]
                         forState:UIControlStateSelected];
    // ボタンタップ時のメソッド
    [mybutton2 addTarget:self
                  action:@selector(didTapToggle2:)
        forControlEvents:UIControlEventTouchUpInside];
    // ボタンをviewに追加
    [self.view addSubview:mybutton2];
    
    
    
    // ボタンの背景画像（通常時（非選択時））
    [mybutton3 setBackgroundImage:[UIImage imageNamed:@"bag.png"]
                         forState:UIControlStateNormal];
    // ボタンの背景画像（選択時）
    [mybutton3 setBackgroundImage:[UIImage imageNamed:@"bag1.png"]
                         forState:UIControlStateSelected];
    // ボタンタップ時のメソッド
    [mybutton3 addTarget:self
                  action:@selector(didTapToggle3:)
        forControlEvents:UIControlEventTouchUpInside];
    // ボタンをviewに追加
    [self.view addSubview:mybutton3];
    
    // ボタンの背景画像（通常時（非選択時））
    [mybutton4 setBackgroundImage:[UIImage imageNamed:@"car.png"]
                         forState:UIControlStateNormal];
    // ボタンの背景画像（選択時）
    [mybutton4 setBackgroundImage:[UIImage imageNamed:@"car1.png"]
                         forState:UIControlStateSelected];
    // ボタンタップ時のメソッド
    [mybutton4 addTarget:self
                  action:@selector(didTapToggle4:)
        forControlEvents:UIControlEventTouchUpInside];
    // ボタンをviewに追加
    [self.view addSubview:mybutton4];
    
    
    // ボタンの背景画像（通常時（非選択時））
    [mybutton5 setBackgroundImage:[UIImage imageNamed:@"city.png"]
                         forState:UIControlStateNormal];
    // ボタンの背景画像（選択時）
    [mybutton5 setBackgroundImage:[UIImage imageNamed:@"city1.png"]
                         forState:UIControlStateSelected];
    // ボタンタップ時のメソッド
    [mybutton5 addTarget:self
                  action:@selector(didTapToggle5:)
        forControlEvents:UIControlEventTouchUpInside];
    // ボタンをviewに追加
    [self.view addSubview:mybutton5];
    
    
    // ボタンの背景画像（通常時（非選択時））
    [mybutton6 setBackgroundImage:[UIImage imageNamed:@"roof.png"]
                         forState:UIControlStateNormal];
    // ボタンの背景画像（選択時）
    [mybutton6 setBackgroundImage:[UIImage imageNamed:@"roof1.png"]
                         forState:UIControlStateSelected];
    // ボタンタップ時のメソッド
    [mybutton6 addTarget:self
                  action:@selector(didTapToggle6:)
        forControlEvents:UIControlEventTouchUpInside];
    // ボタンをviewに追加
    [self.view addSubview:mybutton6];
    
    [UINavigationBar appearance].titleTextAttributes
    = @{NSForegroundColorAttributeName: [UIColor whiteColor]};
    
    [self.navigationController.navigationBar configureFlatNavigationBarWithColor:[UIColor turquoiseColor]];
    
    self.mybutton.buttonColor = [UIColor turquoiseColor];
    self.mybutton.shadowColor = [UIColor greenSeaColor];
    self.mybutton.shadowHeight = 3.0f;
    self.mybutton.cornerRadius = 6.0f;
    self.mybutton.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [self.mybutton setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [self.mybutton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    //検索結果表示画面「戻る」を表示する
    UIBarButtonItem *barButton = [[UIBarButtonItem alloc] init];
    barButton.title = @" ";
    self.navigationItem.backBarButtonItem = barButton;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return tiiki_list.count;
}

-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return tiiki_list[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"選択=%@", tiiki_list[row]);
    
}

-(IBAction)goBack:(UIStoryboardSegue *)segue{}

- (IBAction)clickBtn:(UIButton *)sender {
    
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    [SVProgressHUD show];
    //2つ目の画面にパラメータを渡して遷移する
    if ([segue.identifier isEqualToString:@"secondSegue"]) {
        //ここでパラメータを渡す
        GroupViewController *secondViewController = segue.destinationViewController;
        secondViewController.arguments = @"test";
        if(self.mybutton1.selected){
            secondViewController.option1=@"0";
            secondViewController.option2=@"0";
            secondViewController.option3=@"1";
            secondViewController.option4=@"1";
            secondViewController.option5=@"1";
            secondViewController.option6=@"1";
        }else{
            secondViewController.option1=@"0";
            secondViewController.option2=@"1";
            secondViewController.option3=@"1";
            secondViewController.option4=@"1";
            secondViewController.option5=@"1";
            secondViewController.option6=@"1";
        }
        


    }
}
-(void)viewWillDisappear:(BOOL)animated{
    [SVProgressHUD dismiss];
}

// ボタンタップ時
- (IBAction)didTapToggle1:(id)sender
{
    mybutton1.selected = !mybutton1.selected;
}

- (IBAction)didTapToggle2:(id)sender
{
    mybutton2.selected = !mybutton2.selected;
}

- (IBAction)didTapToggle3:(id)sender
{
    mybutton3.selected = !mybutton3.selected;
}
- (IBAction)didTapToggle4:(id)sender
{
    mybutton4.selected = !mybutton4.selected;
}
- (IBAction)didTapToggle5:(id)sender
{
    mybutton5.selected = !mybutton5.selected;
}
- (IBAction)didTapToggle6:(id)sender
{
    mybutton6.selected = !mybutton6.selected;
}


@end