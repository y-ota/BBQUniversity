//
//  RegisterViewController.m
//  BBQuniversuty
//
//  Created by guest on 2014/08/22.
//  Copyright (c) 2014年 TeamYakult. All rights reserved.
//

#import "RegisterViewController.h"
#import <FacebookSDK/FacebookSDK.h>
#import "FUIButton.h"
#import "UIColor+FlatUI.h"
#import "UIFont+FlatUI.h"

@interface RegisterViewController () <FBLoginViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *myTextView;
@property (weak, nonatomic) IBOutlet UITextField *myTextView1;
@property (weak, nonatomic) IBOutlet UITextField *myTextView2;



@end

@implementation RegisterViewController

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
    
     self.loginView.readPermissions = @[@"public_profile", @"email", @"user_friends"];
           self.loginView.delegate = self;
    self.myTextView.delegate = self;
    self.myTextView1.delegate = self;
    self.myTextView2.delegate = self;
    
    self.mybutton.buttonColor = [UIColor turquoiseColor];
    self.mybutton.shadowColor = [UIColor greenSeaColor];
    self.mybutton.shadowHeight = 3.0f;
    self.mybutton.cornerRadius = 6.0f;
    self.mybutton.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [self.mybutton setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [self.mybutton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    

    
    
    }
 // This method will be called when the user information has been fetched
 - (void)loginViewFetchedUserInfo:(FBLoginView *)loginView
                             user:(id<FBGraphUser>)user {
         NSLog(@"%@", user.name);
     }

// Logged-in user experience
- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView {
    NSLog(@"You're logged in as");
    
}

 // Logged-out user experience
 - (void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView {
         NSLog(@"You're not logged in!");
     }

// Handle possible errors that can occur during login
- (void)loginView:(FBLoginView *)loginView handleError:(NSError *)error {
    NSString *alertMessage, *alertTitle;
    
    // If the user should perform an action outside of you app to recover,
    // the SDK will provide a message for the user, you just need to surface it.
    // This conveniently handles cases like Facebook password change or unverified Facebook accounts.
    if ([FBErrorUtility shouldNotifyUserForError:error]) {
        alertTitle = @"Facebook error";
        alertMessage = [FBErrorUtility userMessageForError:error];
        
        // This code will handle session closures that happen outside of the app
        // You can take a look at our error handling guide to know more about it
        // https://developers.facebook.com/docs/ios/errors
    } else if ([FBErrorUtility errorCategoryForError:error] == FBErrorCategoryAuthenticationReopenSession) {
        alertTitle = @"Session Error";
        alertMessage = @"Your current session is no longer valid. Please log in again.";
        
        // If the user has cancelled a login, we will do nothing.
        // You can also choose to show the user a message if cancelling login will result in
        // the user not being able to complete a task they had initiated in your app
        // (like accessing FB-stored information or posting to Facebook)
    } else if ([FBErrorUtility errorCategoryForError:error] == FBErrorCategoryUserCancelled) {
        NSLog(@"user cancelled login");
        
        // For simplicity, this sample handles other errors with a generic message
        // You can checkout our error handling guide for more detailed information
        // https://developers.facebook.com/docs/ios/errors
    } else {
        alertTitle  = @"Something went wrong";
        alertMessage = @"Please try again later.";
        NSLog(@"Unexpected error:%@", error);
    }
    
    if (alertMessage) {
        [[[UIAlertView alloc] initWithTitle:alertTitle
                                    message:alertMessage
                                   delegate:nil
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil] show];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.view endEditing: YES];
    NSLog(@"<入力された文字>%@", self.myTextView.text);
    
    return NO;
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
