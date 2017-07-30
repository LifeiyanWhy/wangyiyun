//
//  FXUIView.m
//  WY
//
//  Created by lifeiyan on 17/7/21.
//  Copyright (c) 2017年 lifeiyan. All rights reserved.
//

#import "FXUIView.h"
@implementation FXUIView{
@protected UIPageControl *pag;
@protected UIScrollView *scr;
@protected UIButton *button;
@protected UIButton *button1;
@protected UIButton *button2;
@protected UIButton *button3;
@protected UIButton *button4;
@protected UIButton *button5;
@protected UIButton *button6;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(self){
        [self addUI];
    }
    return self;
}
- (void)addUI {
    
    scr = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 20, 375, 170)];
    scr.backgroundColor = [UIColor whiteColor];
    scr.contentSize = CGSizeMake(375*8, 170);
    for(int i = 7;i <= 14; i++){
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]];
        UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(375*(i-7),20,375,170)];
        imageview.image = image;
        [scr addSubview:imageview];
    }
    scr.pagingEnabled = YES;
    scr.bounces = NO;
    //    scr.contentOffset = CGPointMake(0, 0);
    scr.delegate = self;
    [self addSubview:scr];
    scr.showsHorizontalScrollIndicator = NO;
    scr.showsVerticalScrollIndicator = NO;
    
    pag = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 140, 375, 30)];
    pag.numberOfPages = 8;
    pag.currentPage = 1;
    pag.currentPageIndicatorTintColor = [UIColor redColor];
    [pag addTarget:self action:@selector(page:) forControlEvents:UIControlEventValueChanged];
    [self addSubview:pag];
    
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(10,8,62,20);
    [button setTitle:@"个性推荐" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:15];
    button.tintColor = [UIColor redColor];
    [self addSubview:button];
    [button addTarget:self action:@selector(change) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];

    
    button1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button1.frame = CGRectMake(110,8,40,20);
    [button1 setTitle:@"歌单" forState:UIControlStateNormal];
    button1.titleLabel.font = [UIFont systemFontOfSize:15];
    button1.tintColor = [UIColor blackColor];
    [self addSubview:button1];
    [button1 addTarget:self action:@selector(change1) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button1];

    
    button2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button2.frame = CGRectMake(190,8,62,20);
    [button2 setTitle:@"主播电台" forState:UIControlStateNormal];
    button2.titleLabel.font = [UIFont systemFontOfSize:15];
    button2.tintColor = [UIColor blackColor];
    [self addSubview:button2];
    [button2 addTarget:self action:@selector(change2) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button2];

    
    button3 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button3.frame = CGRectMake(280,8,60,20);
    [button3 setTitle:@"排行榜" forState:UIControlStateNormal];
    button3.titleLabel.font = [UIFont systemFontOfSize:15];
    button3.tintColor = [UIColor blackColor];
    [self addSubview:button3];
    [button3 addTarget:self action:@selector(change3) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button3];

//    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];
//    button1.frame = CGRectMake(25, 25, 60, 60);
//    button1.clipsToBounds = YES;
//    button1.layer.cornerRadius = 30;
//    [button1 setImage:[UIImage imageNamed:@"1.jpg"] forState:UIControlStateNormal];
//    [self addSubview:button1];

    
    button4 = [UIButton buttonWithType:UIButtonTypeCustom];
    button4.frame = CGRectMake(30,200,80,80);
    button4.backgroundColor = [UIColor redColor];
    [button4 setImage:[UIImage imageNamed:@"sr.jpg"] forState:UIControlStateNormal];
    [self addSubview:button4];
    
    button5 = [UIButton buttonWithType:UIButtonTypeCustom];
    button5.frame = CGRectMake(150,200,80,80);
    [button5 setImage:[UIImage imageNamed:@"tj.jpg"] forState:UIControlStateNormal];
    [self addSubview:button5];
    
    button6 = [UIButton buttonWithType:UIButtonTypeCustom];
    button6.frame = CGRectMake(260,200,80,80);
    [button6 setImage:[UIImage imageNamed:@"rg.jpg"] forState:UIControlStateNormal];
    [self addSubview:button6];
}
-(void)change{
    button3.tintColor = [UIColor blackColor];
    button.tintColor = [UIColor redColor];
    button1.tintColor = [UIColor blackColor];
    button2.tintColor = [UIColor blackColor];
}
-(void)change1{
    button3.tintColor = [UIColor blackColor];
    button.tintColor = [UIColor blackColor];
    button1.tintColor = [UIColor redColor];
    button2.tintColor = [UIColor blackColor];
}
-(void)change2{
    button3.tintColor = [UIColor blackColor];
    button.tintColor = [UIColor blackColor];
    button1.tintColor = [UIColor blackColor];
    button2.tintColor = [UIColor redColor];
}
-(void)change3{
    button3.tintColor = [UIColor redColor];
    button.tintColor = [UIColor blackColor];
    button1.tintColor = [UIColor blackColor];
    button2.tintColor = [UIColor blackColor];
}
-(void)page:(UIPageControl *)page{
    scr.contentOffset = CGPointMake(375*page.currentPage,0);
    NSLog(@"%f",scr.frame.origin.y);
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    int number = (int)scrollView.contentOffset.x/375;
    pag.currentPage = number;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
