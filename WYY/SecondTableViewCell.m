//
//  SecondTableViewCell.m
//  WYY
//
//  Created by 李飞艳 on 2017/7/24.
//  Copyright © 2017年 李飞艳. All rights reserved.
//

#import "SecondTableViewCell.h"

@implementation SecondTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:self.button];
        self.scr = [[UIScrollView alloc] init];
        [self addSubview:self.scr];
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    self.button.frame = CGRectMake(5, 15, 100, 20);
    [self.button setTitle:@"热门话题 >" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    self.scr.frame = CGRectMake(5, 45, 355, 110);
    self.scr.backgroundColor = [UIColor whiteColor];
    self.scr.contentSize = CGSizeMake(160*3, 110);
    self.scr.showsHorizontalScrollIndicator = NO;
    self.scr.showsVerticalScrollIndicator = NO;
    for(int i = 15;i <= 17; i++){
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.png",i]];
        UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(160*(i-15),0,160,110)];
        imageview.image = image;
        [self.scr addSubview:imageview];
    }
    
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
