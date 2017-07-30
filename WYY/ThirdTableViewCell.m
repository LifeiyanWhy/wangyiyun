//
//  ThirdTableViewCell.m
//  WYY
//
//  Created by 李飞艳 on 2017/7/24.
//  Copyright © 2017年 李飞艳. All rights reserved.
//

#import "ThirdTableViewCell.h"

@implementation ThirdTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.lab = [[UILabel alloc] init];
        [self addSubview:self.lab];
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:self.button];
        self.button1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:self.button1];
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    self.lab.frame = CGRectMake(25,0,345, 60);
    self.lab.numberOfLines = 2;
    self.lab.lineBreakMode = NSLineBreakByWordWrapping;
    self.lab.text = @"【第三期】 来看看高手们时如何强行化解尴尬的";
    self.lab.font = [UIFont systemFontOfSize:17];
    self.lab.textColor = [UIColor blackColor];

    self.button.frame = CGRectMake(25, 65, 340, 200);
    [self.button setImage:[UIImage imageNamed:@"000.png"] forState:UIControlStateNormal];
    
    self.button1.frame = CGRectMake(35, 270, 100, 40);
    [self.button1 setImage:[UIImage imageNamed:@"点赞.png"] forState:UIControlStateNormal];
    [self.button1 setTitle:@" 2134" forState:UIControlStateNormal];
    [self.button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.button1 addTarget:self action:@selector(change) forControlEvents:UIControlEventTouchUpInside];
}
-(void)change{
    [self.button1 setImage:[UIImage imageNamed:@"dz.png"] forState:UIControlStateNormal];
    [self.button1 setTitle:@" 2135" forState:UIControlStateNormal];
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
