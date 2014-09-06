
//

//  TableViewCell.m

//  Test

//

//  Created by 大田祐輔 on 2014/08/24.

//  Copyright (c) 2014年 TemaYakult. All rights reserved.

//



#import "SmartCell.h"

#import "UIColor+FlatUI.h"

#import "FUIButton.h"

#import "UIBarButtonItem+FlatUI.h"

#import "UINavigationBar+FlatUI.h"

#import "UIFont+FlatUI.h"



@implementation SmartCell

@synthesize button;



- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier

{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        // Initialization code
        
        
        
    }
    
    return self;
    
}



- (void)awakeFromNib

{
    
    // Initialization code
    
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated

{
    
    [super setSelected:selected animated:animated];
    
    
    
    // Configure the view for the selected state
    
    
    
    self.button.buttonColor = [UIColor turquoiseColor];
    
    self.button.shadowColor = [UIColor greenSeaColor];
    
    self.button.shadowHeight = 3.0f;
    
    self.button.cornerRadius = 6.0f;
    
    self.button.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    
    [self.button setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    
    [self.button setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    
    
    
    // タイトル
    
    [button setTitle:@"オファーを送る" forState:UIControlStateNormal];
    
    
    
    // ボタンの背景画像（選択時）
    
    [button setTitle:@"オファー送信済み"
     
            forState:UIControlStateSelected];
    
    // ボタンタップ時のメソッド
    
    [button addTarget:self
     
               action:@selector(didTapToggle:)
     
     forControlEvents:UIControlEventTouchUpInside];
    
    // ボタンをviewに追加
    
    [self.contentView addSubview:button];
    
    NSLog(@"aaa");
    
    
    
}



- (IBAction)didTapToggle:(id)sender

{
    
    button.selected = !button.selected;
    
}



@end