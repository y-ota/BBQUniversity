//
//  GroupViewController.m
//  BBQuniversuty
//
//  Created by 大田祐輔 on 2014/08/22.
//  Copyright (c) 2014年 TeamYakult. All rights reserved.
//

#import "GroupViewController.h"
#import "SmartCell.h"
#import "UIColor+FlatUI.h"
#import "FUIButton.h"
#import "UIBarButtonItem+FlatUI.h"
#import "UINavigationBar+FlatUI.h"
#import "UIFont+FlatUI.h"
#import "SVProgressHUD.h"

@interface GroupViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;
@property (weak, nonatomic) IBOutlet UIImageView *imageView4;
@property (weak, nonatomic) IBOutlet UITableView *TableView;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;


@end

@implementation GroupViewController

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
    [self.myTableView registerNib:[UINib nibWithNibName:@"SmartCell" bundle:nil]
           forCellReuseIdentifier:@"Cell"];	// Do any additional setup after loading the view, typically from a nib.
    self.myTableView.delegate =self;
    self.myTableView.dataSource= self;
    

    
    NSString *url = [NSString stringWithFormat:@"%@%@", @"http://133.27.246.51/searchGroup.php",    [NSString stringWithFormat:@"?option1=%@&option2=%@&option3=%@&option4=%@&option5=%@&option6=%@",self.option1,self.option2,self.option3,self.option4,self.option5,self.option6]];
    NSLog(url);
    
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    NSData *json_data = [NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
    NSError *error=nil;
    
    // JSONの型によって、NSDictionaryとNSArrayを使い分ける
    NSArray *jsonObject = [NSJSONSerialization JSONObjectWithData:json_data options:NSJSONReadingAllowFragments error:&error];
    
    self.data = [NSMutableArray array];
    
    for (NSDictionary *obj in jsonObject)
    {
        //[data addObject:[obj objectForKey:@"name"]];
        [self.data addObject:obj];
        
    }
    
    NSLog(self.arguments);
    
    
    
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.data.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 230;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //------ 画像をセットする------------------
    // 再利用できるセルがあれば再利用する
    NSString *cellIdentifier = @"Cell";
    SmartCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell){
        cell = [[SmartCell alloc]
                initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSLog([[self.data objectAtIndex:indexPath.row]objectForKey:@"image1"]);
    NSURL *myURL1 = [NSURL URLWithString: [[self.data objectAtIndex:indexPath.row]objectForKey:@"image1"]];
    NSData *myData1 = [NSData dataWithContentsOfURL:myURL1];
    UIImage *myImage1 = [UIImage imageWithData:myData1];
    cell.image1.image = myImage1;
    
    NSURL *myURL2 = [NSURL URLWithString: [[self.data objectAtIndex:indexPath.row]objectForKey:@"image2"]];
    NSData *myData2 = [NSData dataWithContentsOfURL:myURL2];
    UIImage *myImage2 = [UIImage imageWithData:myData2];
    cell.image2.image = myImage2;
//        cell.image1.frame = CGRectMake(150.0f, 100.0f, 100.0f, 100.0f);
//        [[cell.image1 layer] setCornerRadius:40.0f];
//        [cell.image1 setClipsToBounds:YES];
//        cell.image2.frame = CGRectMake(150.0f, 100.0f, 100.0f, 100.0f);
//        [[cell.image2 layer] setCornerRadius:40.0f];
//        [cell.image2 setClipsToBounds:YES];
    //NSLog([[self.data objectAtIndex:0]objectForKey:@"image"]);
    //NSLog([[self.data objectAtIndex:0]objectForKey:@"name"]);
    cell.text1.text = [[self.data objectAtIndex:indexPath.row]objectForKey:@"name1"];
    cell.text2.text = [[self.data objectAtIndex:indexPath.row]objectForKey:@"name2"];
    cell.text3.text = [[self.data objectAtIndex:indexPath.row]objectForKey:@"university1"];
    cell.text4.text = [[self.data objectAtIndex:indexPath.row]objectForKey:@"university2"];
    
    //------ 画像をセットする------------------
    
    return cell;
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
-(IBAction)goBack:(UIStoryboardSegue *)segue{}



@end
