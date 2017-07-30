//
//  head.m
//  WY
//
//  Created by lifeiyan on 17/7/20.
//  Copyright (c) 2017年 lifeiyan. All rights reserved.
//

#import "head.h"
#import "DTViewController.h"

@implementation head{
    @protected UIButton *button3;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self addUI];
    }
    return self;
}
-(void)addUI{
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    button1.frame = CGRectMake(25, 25, 60, 60);
    button1.clipsToBounds = YES;
    button1.layer.cornerRadius = 30;
    [button1 setImage:[UIImage imageNamed:@"1.jpg"] forState:UIControlStateNormal];
    [self addSubview:button1];
    
    UILabel *lab = [[UILabel alloc] initWithFrame:CGRectMake(100, 35, 60, 30)];
    lab.text = @"李小跳";
    [self addSubview:lab];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(100, 70, 50, 20);
    [button2 setTitle:@"Lv.4" forState:UIControlStateNormal];
    button2.tintColor = [UIColor blackColor];
    [button2.layer setBorderWidth:1];
    [button2.layer setBorderColor:[UIColor blackColor].CGColor];
    button2.layer.cornerRadius = 9;
    //允许圆角
    button2.layer.masksToBounds = YES;
    [self addSubview:button2];
    
    button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.frame = CGRectMake(280, 45, 80, 30);
    [button3 setTitle:@"签到" forState:UIControlStateNormal];
    button3.tintColor = [UIColor blackColor];
    [button3 setImage:[UIImage imageNamed:@"金币.png"] forState:UIControlStateNormal];
    [button3 setImageEdgeInsets:UIEdgeInsetsMake(0, -5, 0, 0)];
    [button3.layer setBorderWidth:1];
    [button3.layer setBorderColor:[UIColor blackColor].CGColor];
    button3.layer.masksToBounds = YES;
    button3.layer.cornerRadius = 13;
    [button3 addTarget:self action:@selector(change) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button3];
    
    UIImageView *image1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 100, 375, 1)];
    image1.image = [UIImage imageNamed:@"5.png"];
    [self addSubview:image1];

    UIImageView *image2 = [[UIImageView alloc] initWithFrame:CGRectMake(375/4.0, 105, 1, 40)];
    image2.image = [UIImage imageNamed:@"6.png"];
    [self addSubview:image2];
    
    
    UIImageView *image3 = [[UIImageView alloc] initWithFrame:CGRectMake((375/4.0)*2, 105, 1, 40)];
    image3.image = [UIImage imageNamed:@"6.png"];
    [self addSubview:image3];
    
    UIImageView *image4 = [[UIImageView alloc] initWithFrame:CGRectMake((375/4.0)*3, 105, 1, 40)];
    image4.image = [UIImage imageNamed:@"6.png"];
    [self addSubview:image4];

    UIImageView *image5 = [[UIImageView alloc] initWithFrame:CGRectMake(320, 110, 18, 18)];
    image5.image = [UIImage imageNamed:@"铅笔.png"];
    [self addSubview:image5];
   
    UILabel *lab1 = [[UILabel alloc] initWithFrame:CGRectMake(300,140,55,5)];
    lab1.text = @"我的资料";
    [lab1 setTextColor:[UIColor lightGrayColor]];
    lab1.font = [UIFont boldSystemFontOfSize:13];
    
    [self addSubview:lab1];
    
    UIButton *button4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button4.frame = CGRectMake(215, 105, 30,30);
    [button4 setTitle:@"粉丝" forState:UIControlStateNormal];
    button4.titleLabel.font = [UIFont systemFontOfSize:13];
    button4.tintColor = [UIColor lightGrayColor];
    [self addSubview:button4];
    
    UIButton *button5 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button5.frame = CGRectMake(215, 125, 30,30);
    [button5 setTitle:@"6" forState:UIControlStateNormal];
    button5.tintColor = [UIColor blackColor];
    [self addSubview:button5];

    UIButton *button6 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button6.frame = CGRectMake(125, 105, 30,30);
    [button6 setTitle:@"关注" forState:UIControlStateNormal];
    button6.titleLabel.font = [UIFont systemFontOfSize:13];
    button6.tintColor = [UIColor lightGrayColor];
    [self addSubview:button6];
    
    UIButton *button7 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button7.frame = CGRectMake(125, 125, 30,30);
    [button7 setTitle:@"3" forState:UIControlStateNormal];
    button7.tintColor = [UIColor blackColor];
    [self addSubview:button7];

//    UIButton *button8 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    button8.frame = CGRectMake(125, 105, 30,30);
//    [button8 setTitle:@"关注" forState:UIControlStateNormal];
//    button8.titleLabel.font = [UIFont systemFontOfSize:13];
//    button8.tintColor = [UIColor lightGrayColor];
//    [self addSubview:button8];
//    
//    UIButton *button9 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    button9.frame = CGRectMake(125, 125, 30,30);
//    [button9 setTitle:@"3" forState:UIControlStateNormal];
//    button9.tintColor = [UIColor blackColor];
//    [self addSubview:button9];
    
    UIButton *button10 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button10.frame = CGRectMake(35, 105, 30,30);
    [button10 setTitle:@"动态" forState:UIControlStateNormal];
    button10.titleLabel.font = [UIFont systemFontOfSize:13];
    button10.tintColor = [UIColor  lightGrayColor];
    
    [self addSubview:button10];
    
    UIButton *button11 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button11.frame = CGRectMake(35, 125, 30,30);
    [button11 setTitle:@"0" forState:UIControlStateNormal];
    button11.tintColor = [UIColor blackColor];
    [self addSubview:button11];

}
-(void)change{
    [button3 setTitle:@"已签到" forState:UIControlStateNormal];
    button3.tintColor = [UIColor redColor];
//    [button3.layer setBorderColor:[UIColor redColor].CGColor];
    [button3 setImage:nil forState:UIControlStateNormal];
}
@end
