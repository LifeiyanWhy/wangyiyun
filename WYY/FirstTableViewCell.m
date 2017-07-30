//
//  FirstTableViewCell.m
//  WYY
//
//  Created by 李飞艳 on 2017/7/24.
//  Copyright © 2017年 李飞艳. All rights reserved.
//

#import "FirstTableViewCell.h"

@implementation FirstTableViewCell
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
//        self.button1 = [[UIButton alloc] init];
        self.button1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:self.button1];
        self.button2 = [UIButton buttonWithType:UIButtonTypeCustom];
        [self addSubview:self.button2];
        self.imageview = [[UIImageView alloc] init];
        [self addSubview:self.imageview];
    }
    return self;
}
-(void)layoutSubviews{
    [super layoutSubviews];
    self.button1.frame = CGRectMake(20, 12, 150, 30);
    [self.button1 setTitle:@"发动态" forState:UIControlStateNormal];
    [self.button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.button1.titleLabel.font = [UIFont systemFontOfSize:17];
    [self.button1 setImage:[UIImage imageNamed:@"发表动态-2.png"] forState:UIControlStateNormal];
    [self.button1 setImageEdgeInsets:UIEdgeInsetsMake(0, -10, 0, 0)];
    
    self.button2.frame = CGRectMake(375/2+20, 12, 150, 30);
    [self.button2 setTitle:@"发短视频" forState:UIControlStateNormal];
    [self.button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.button2.titleLabel.font = [UIFont systemFontOfSize:17];
    [self.button2 setImage:[UIImage imageNamed:@"视频.png"] forState:UIControlStateNormal];
    [self.button2 setImageEdgeInsets:UIEdgeInsetsMake(0, -12, 0, 0)];

    self.imageview.image = [UIImage imageNamed:@"6.png"];
    self.imageview.frame = CGRectMake(375/2-1, 4, 1, 42);
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
