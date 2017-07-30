//
//  cellTableViewCell.m
//  WYY
//
//  Created by 李飞艳 on 2017/7/22.
//  Copyright © 2017年 李飞艳. All rights reserved.
//

#import "cellTableViewCell.h"

@implementation cellTableViewCell
//重写初始化方法
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        _button1 = [[UIButton alloc] init];
        [self addSubview:_button1];
        self.button2 = [[UIButton alloc] init];
        [self addSubview:self.button2];
        self.button3 = [[UIButton alloc] init];
        [self addSubview:self.button3];
        self.button4 = [[UIButton alloc] init];
        [self addSubview:self.button4];
        self.button5 = [[UIButton alloc] init];
        [self addSubview:self.button5];
        self.button6 = [[UIButton alloc] init];
        [self addSubview:self.button6];
    }
    return self;
}
//设置控件信息
-(void)layoutSubviews{
    [super layoutSubviews];
    _button1.frame = CGRectMake(0, 0, 125, 130);
    [_button1 setImage:[UIImage imageNamed:@"55.jpg"] forState:UIControlStateNormal];
    
    _button2.frame = CGRectMake(130, 0, 120, 130);
    [_button2 setImage:[UIImage imageNamed:@"111.jpg"] forState:UIControlStateNormal];
    
    _button3.frame = CGRectMake(255, 0, 120, 130);
    [_button3 setImage:[UIImage imageNamed:@"66.jpg"] forState:UIControlStateNormal];
    
    _button4.frame = CGRectMake(0, 140, 125, 130);
    [_button4 setImage:[UIImage imageNamed:@"222.jpg"] forState:UIControlStateNormal];
    
    _button5.frame = CGRectMake(130, 140, 120, 130);
    [_button5 setImage:[UIImage imageNamed:@"44.jpg"] forState:UIControlStateNormal];
    
    _button6.frame = CGRectMake(255, 140, 120, 130);
    [_button6 setImage:[UIImage imageNamed:@"33.jpg"] forState:UIControlStateNormal];
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
