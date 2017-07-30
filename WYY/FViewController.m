//
//  FViewController.m
//  WY
//
//  Created by lifeiyan on 17/7/20.
//  Copyright (c) 2017年 lifeiyan. All rights reserved.
//
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"
#import "ThirdTableViewCell.h"
#import "FViewController.h"

@interface FViewController ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tab;
}
@end

@implementation FViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage *image = [UIImage imageNamed:@"收藏"];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(right)];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"娱乐_播放中2.png"] style:UIBarButtonItemStylePlain target:self action:@selector(right)];
    
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
    
    UISegmentedControl *sgm = [[UISegmentedControl alloc] initWithItems:@[@"动态",@"附近" ]];
    sgm.frame = CGRectMake(140, 20, 140, 30);
//    sgm.segmentedControlStyle = UISegmentedControlStyleBar;
    sgm.layer.masksToBounds = YES;
    [sgm.layer setBorderWidth:0.8];
    [sgm.layer setBorderColor:[UIColor whiteColor].CGColor];
    sgm.layer.cornerRadius = 13;
    sgm.tintColor = [UIColor whiteColor];
    sgm.selectedSegmentIndex = 0;
    [self.navigationItem setTitleView:sgm];
    
    tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 375, 800)];
    [self.view addSubview:tab];
    tab.backgroundColor = [UIColor whiteColor];
    tab.dataSource = self;
    tab.delegate = self;
}
-(void)right{
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    if(indexPath.section == 0){
        cell = [[FirstTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }else if(indexPath.section == 1){
        cell = [[SecondTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }else if(indexPath.section == 2){
        cell.textLabel.text = @"爱听音乐的猫大叔 分享单曲：";
        cell.detailTextLabel.text = @"最近";
        cell.detailTextLabel.textColor = [UIColor lightGrayColor];
        cell.imageView.image = [UIImage imageNamed:@"mds.png"];
    }
    
    else{
        cell = [[ThirdTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    return cell;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if(section == 0){
        return 0;
    }else if(section == 1){
        return 8;
    }else if(section == 2){
        return 3;
    }else{
        return 0;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        return 50;
    }else if(indexPath.section == 1){
        return 180;
    }else if(indexPath.section == 2){
        return 80;
    }
    else{
        return 320;
    }
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
