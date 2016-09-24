//
//  MyViewCell.h
//  WeMarried
//
//  Created by 俊海贾 on 15/7/3.
//  Copyright (c) 2015年 俊海贾. All rights reserved.
//

#import <UIKit/UIKit.h>
#define MyTableViewCellHeight 45
@interface MyTableViewCell : UITableViewCell
@property (nonatomic,strong) UIView *myViewCellBg;
@property (nonatomic,strong) UIImageView *leftImageView;
@property (nonatomic,strong) UILabel *leftLabelText;
@property (nonatomic,strong) UIImageView *imageViewJianTou;
@property (nonatomic,strong) UIImageView *imageLine;
@property (nonatomic,strong) UIView *rightView;
//index.row == 0页面
-(void)createRowOneAndString:(NSString *)string1 AndString2:(NSString *)string2;
@end
