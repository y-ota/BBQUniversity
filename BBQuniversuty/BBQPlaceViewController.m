//
//  BBQPlaceViewController.m
//  BBQuniversuty
//
//  Created by 大田祐輔 on 2014/08/22.
//  Copyright (c) 2014年 TeamYakult. All rights reserved.
//

#import "BBQPlaceViewController.h"

@interface BBQPlaceViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *placeImage;

@end

@implementation BBQPlaceViewController

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
    NSURL *myURL = [NSURL URLWithString:
                    @"http://blog-imgs-64.fc2.com/k/i/d/kida1977/PAKS_youkiniBBQ500.jpg"];
    NSData *myData = [NSData dataWithContentsOfURL:myURL];
    UIImage *myImage = [UIImage imageWithData:myData];
    self.placeImage.image = myImage;
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
