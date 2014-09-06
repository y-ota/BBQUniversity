//
//  SettingViewController.m
//  BBQuniversuty
//
//  Created by 大田祐輔 on 2014/08/24.
//  Copyright (c) 2014年 TeamYakult. All rights reserved.
//

#import "SettingViewController.h"
#import "SettingCell.h"
#import "UIColor+FlatUI.h"
#import "FUIButton.h"
#import "UIBarButtonItem+FlatUI.h"
#import "UINavigationBar+FlatUI.h"
#import "UIFont+FlatUI.h"

@interface SettingViewController ()

@property (weak, nonatomic) IBOutlet UITableView *myTableView;


@end

@implementation SettingViewController

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
    [self.myTableView registerNib:[UINib nibWithNibName:@"SettingCell" bundle:nil]
           forCellReuseIdentifier:@"Cell"];	// Do any additional setup after loading the view, typically from a nib.
    self.myTableView.delegate =self;
    self.myTableView.dataSource= self;
    ary =  [NSArray arrayWithObjects:
             @"プロフィール編集", @"パートナー編集", @"友達招待",nil];
    images =  [NSArray arrayWithObjects:
            @"profile.png", @"partner.png", @"shoutai.png",nil];
    [self.navigationController.navigationBar configureFlatNavigationBarWithColor:[UIColor turquoiseColor]];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return ary.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //------ 画像をセットする------------------
    // 再利用できるセルがあれば再利用する
    NSString *cellIdentifier = @"Cell";
    SettingCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell){
        cell = [[SettingCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    UIImage *myImage = [UIImage imageNamed:[images
 objectAtIndex:indexPath.row]];
    cell.image.image = myImage;
    cell.text.text = [ary objectAtIndex:indexPath.row];
    
    
    //------ 画像をセットする------------------
    
    return cell;
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
