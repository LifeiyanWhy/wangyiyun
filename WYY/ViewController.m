//
//  ViewController.m
//  WY
//
//  Created by lifeiyan on 17/7/19.
//  Copyright (c) 2017年 lifeiyan. All rights reserved.
//

#import "ViewController.h"
#import "head.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>{
    UITableView *tab;
    NSArray *array0;
    NSArray *array1;
    NSArray *array2;
    NSArray *array3;
    NSArray *array4;
    NSArray *arrayimage0;
    NSArray *arrayimage1;
    NSArray *arrayimage2;
    NSArray *arrayimage3;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"账号";
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:18],
       NSForegroundColorAttributeName:[UIColor whiteColor]}];
    UIImage *image= [UIImage imageNamed:@"娱乐_播放中2.png"];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(right)];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
    
    tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 375,675-64)];
    [self.view addSubview:tab];
    tab.delegate = self;
    tab.dataSource =self;
    tab.backgroundColor = [UIColor whiteColor];
    tab.rowHeight = 50;
    //表头
    head *view= [[head alloc] initWithFrame:CGRectMake(0, 64, 375, 150)];
    tab.tableHeaderView = view;

    array0 = [NSArray arrayWithObjects:@"我的消息", nil];
    array1 = [NSArray arrayWithObjects:@"会员中心",@"商城",@"在线听歌免流量", nil];
    array2 = [NSArray arrayWithObjects:@"设置",@"扫一扫",@"主题换肤",@"夜间模式",@"定时关闭",@"音乐闹钟",@"驾驶模式", nil];
    array3 = [NSArray arrayWithObjects:@"分享网易云音乐",@"关于", nil];
    array4= [NSArray arrayWithObjects:@"\t\t\t\t     退出登录", nil];
    
    arrayimage0 = [NSArray arrayWithObjects:@"我的消息.png",nil];
    arrayimage1 = [NSArray arrayWithObjects:@"会员.png",@"商城.png",@"在线听歌1-2.png",nil];
    arrayimage2 = [NSArray arrayWithObjects:@"设置.png",@"扫一扫.png",@"主题换肤.png",@"夜间模式.png",@"定时关闭.png",@"音乐闹钟.png",@"驾驶.png",nil];
    arrayimage3 = [NSArray arrayWithObjects:@"分享.png",@"关于.png",nil];
    
}
-(void)right{
//    NSLog(@"right");
}
- (UITableViewCell *)tableView:(UITableView *)tableView  cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    //根据标识符从重用池中去cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //如果没有就创建一个新的
    if(cell == nil){
        cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [array0 objectAtIndex:indexPath.row];
            cell.imageView.image = [UIImage imageNamed:arrayimage0[indexPath.row]];
            break;
        case 1:
            cell.textLabel.text = [array1 objectAtIndex:indexPath.row];
            cell.imageView.image = [UIImage imageNamed:arrayimage1[indexPath.row]];
            break;
        case 2:
            cell.textLabel.text = [array2 objectAtIndex:indexPath.row];
            cell.imageView.image = [UIImage imageNamed:arrayimage2[indexPath.row]];
            break;
        case 3:
            cell.textLabel.text = [array3 objectAtIndex:indexPath.row];
            cell.imageView.image = [UIImage imageNamed:arrayimage3[indexPath.row]];
            break;
        case 4:
            cell.textLabel.text = [array4 objectAtIndex:indexPath.row];
            cell.imageView.image = nil;
            break;
    }
    if(indexPath.section != 4){
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    UISwitch *sw = [[UISwitch alloc] init];
    sw.onTintColor = [UIColor redColor];
    if(indexPath.section == 2 && indexPath.row == 3){
        cell.accessoryView = sw;
    }
   
    if(indexPath.section == 4 && indexPath.row == 0){
        cell.textLabel.textColor = [UIColor redColor];
    }else{
        cell.textLabel.textColor = [UIColor blackColor];
    }
    
    if(indexPath.section == 2 && indexPath.row == 2){
         cell.detailTextLabel.text = @"官方红";
         cell.detailTextLabel.textColor = [UIColor grayColor];
         cell.detailTextLabel.font = [UIFont systemFontOfSize:13];
    }else if(indexPath.section == 0){
        cell.detailTextLabel.text = @" 20 ";
        cell.detailTextLabel.textColor = [UIColor whiteColor];
        cell.detailTextLabel.backgroundColor = [UIColor redColor];
        cell.detailTextLabel.layer.cornerRadius = 10;
        cell.detailTextLabel.clipsToBounds = YES;
    }else{
        cell.detailTextLabel.text = @"";
    }
    return cell;
}
//分区数
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 5;
}
//分区的高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 10;
}
//行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return 1;
        case 1:
            return 3;
        case 2:
            return 7;
        case 3:
            return 2;
        default:
            return 1;
            break;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}
//分区标题
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
