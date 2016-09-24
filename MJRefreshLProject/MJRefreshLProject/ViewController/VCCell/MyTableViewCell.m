//
//  MyViewCell.m
//  WeMarried
//
//  Created by 俊海贾 on 15/7/3.
//  Copyright (c) 2015年 俊海贾. All rights reserved.
//

#import "MyTableViewCell.h"
#import "MyDefine.h"
@implementation MyTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.myViewCellBg = [[UIView alloc] init];
        self.myViewCellBg.frame = CGRectMake(0, 0, MainScreenSize.width, MyTableViewCellHeight);
        self.myViewCellBg.backgroundColor = [UIColor whiteColor];
        [self.contentView addSubview:self.myViewCellBg];
        self.leftImageView = [[UIImageView alloc] init];
        self.leftImageView.frame = CGRectMake(10,(MyTableViewCellHeight-30)/2,30, 30);
        self.leftImageView.layer.cornerRadius = 5;
        self.leftImageView.contentMode = UIViewContentModeScaleAspectFit;
        self.leftImageView.layer.masksToBounds = YES;
        [self.myViewCellBg addSubview:self.leftImageView];
        self.leftLabelText = [[UILabel alloc] init];
        self.leftLabelText.frame = CGRectMake(10+30+10, 0, WidthScreen-50-50, MyTableViewCellHeight);
        self.leftLabelText.backgroundColor = [UIColor clearColor];
        self.leftLabelText.font = [UIFont systemFontOfSize:md_Wode_leftFontSize];
        self.leftLabelText.text = @"gagag";
        self.leftLabelText.textColor = LightBlackLabelTextColor;
        [self.myViewCellBg addSubview:self.leftLabelText];
        self.imageViewJianTou = [[UIImageView alloc] init];
        self.imageViewJianTou.frame = CGRectMake(WidthScreen-25, (MyTableViewCellHeight-13)/2, 6, 13);
        self.imageViewJianTou.image = [UIImage imageNamed:@"Yrightgo@2x.png"];
        [self.myViewCellBg addSubview:self.imageViewJianTou];
        self.imageLine = [[UIImageView alloc]initWithFrame:CGRectMake(0, MyTableViewCellHeight-GrayLineHeight, MainScreenSize.width, GrayLineHeight)];
        self.imageLine.backgroundColor = GrayLineUIColor;
        [self.myViewCellBg addSubview:self.imageLine];
    }
    return self;
}
//index.row == 0页面
-(void)createRowOneAndString:(NSString *)string1 AndString2:(NSString *)string2
{
    if (string1.intValue == 11 && string2.intValue == 11) {
        [self.rightView removeFromSuperview];
        self.rightView = nil;
    }else{
        [self.rightView removeFromSuperview];
        self.rightView = nil;
        self.rightView = [[UIView alloc] init];
        self.rightView.frame = CGRectMake(WidthScreen-130, 0, 100, MyTableViewCellHeight);
        self.rightView.backgroundColor = [UIColor clearColor];
        [self.myViewCellBg addSubview:self.rightView];
        UILabel *left1Label = [[UILabel alloc] init];
        left1Label.frame = CGRectMake(0, (MyTableViewCellHeight-15)/2, 45, 15);
        left1Label.backgroundColor = [UIColor colorWithRed:0.93f green:0.53f blue:0.12f alpha:1.00f];
        left1Label.font = [UIFont systemFontOfSize:13];
        [left1Label.layer setCornerRadius:6];
        left1Label.textAlignment = NSTextAlignmentCenter;
        left1Label.textColor = [UIColor whiteColor];
        left1Label.layer.masksToBounds = YES;
        left1Label.text = string1;
        [self.rightView addSubview:left1Label];
        
        UILabel *right1Label = [[UILabel alloc] init];
        right1Label.frame = CGRectMake(50, (MyTableViewCellHeight-30)/2, 50,30);
        right1Label.backgroundColor = [UIColor clearColor];
        right1Label.font = [UIFont systemFontOfSize:15];
        right1Label.textAlignment = NSTextAlignmentCenter;
        right1Label.textColor = [UIColor colorWithRed:0.93f green:0.53f blue:0.12f alpha:1.00f];
        right1Label.layer.masksToBounds = YES;
        right1Label.text = string2;
        [self.rightView addSubview:right1Label];
    }
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    if (selected == YES) {
        
    }else if (selected == NO){
        
    }
    // Configure the view for the selected state
}
@end
