//
//  WDViewController.m
//  WY
//
//  Created by lifeiyan on 17/7/20.
//  Copyright (c) 2017年 lifeiyan. All rights reserved.
//

#import "WDViewController.h"
#import "DTViewController.h"


@interface WDViewController ()<UITableViewDelegate,UITableViewDataSource>{
    UITableView *tab;
    NSArray *array1;
    NSArray *array2;
    NSArray *array3;
    }
@end

@implementation WDViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"我的音乐";
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:18],
       NSForegroundColorAttributeName:[UIColor whiteColor]}];

    self.navigationItem.titleView.tintColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"更多" style:UIBarButtonItemStylePlain target:self action:@selector(left)];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"娱乐_播放中2.png"] style:UIBarButtonItemStylePlain target:self action:@selector(left)];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
    tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 375, 675-64)];
    [self.view addSubview:tab];
    tab.backgroundColor = [UIColor whiteColor];
    tab.delegate = self;
    tab.dataSource = self;
    
    array1 = [NSArray arrayWithObjects:@"本地音乐",@"最近播放",@"我的电台",@"我的收藏",nil];
    array2 = [NSArray arrayWithObjects:@"音乐-5.png",@"播放-2.png",@"歌曲.png",@"收藏.png",nil];
    array3 = [NSArray arrayWithObjects:@"64",@"100",@"0",@"专栏/歌手／MV/专栏",nil];
}
-(void)left{
}
- (UITableViewCell *)tableView:(UITableView *)tableView  cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    //根据标识符从重用池中去cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    //如果没有就创建一个新的
    if(cell == nil && indexPath.section == 0){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }else{
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:identifier];
    }
    if(indexPath.section == 0){
        cell.textLabel.text = array1[indexPath.row];
        cell.imageView.image = [UIImage imageNamed:array2[indexPath.row]];
        
        //2、调整大小
        CGSize itemSize = CGSizeMake(30, 30);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO, UIScreen.mainScreen.scale);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [cell.imageView.image drawInRect:imageRect];
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        
        
        cell.detailTextLabel.text = array3[indexPath.row];
    }else if(indexPath.section == 1){
        cell.textLabel.text = @"我喜欢的音乐";
        cell.imageView.image = [UIImage imageNamed:@"vic.jpg"];
        cell.detailTextLabel.text = @"71首，已下载61首";
    }else{
        cell.textLabel.text = @"维多利亚十六年原声.1999-2016按...";
        cell.imageView.image = [UIImage imageNamed:@"love.jpg"];
        cell.detailTextLabel.text = @"172首，已下载5首";
    }
    if(indexPath.section  == 0){
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }

    return cell;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
//分区的高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if(section == 0){
        return 0;
    }else{
        return 30;
    }
}
//行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section == 0){
        return 4;
    }else{
        return 1;
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}
//分区标题
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section == 1){
       return @"我创建的歌单(1)";
    }else if(section == 2){
       return @"我收藏的歌单(10)";
    }else{
        return nil;
    }
}
//用户选择一项数据时调用的方法
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"section:%ld  row:%ld",indexPath.section,indexPath.row);
    DTViewController  *view  = [[DTViewController alloc] init];
//    [self presentViewController:view animated:YES completion:nil];
    [self.navigationController pushViewController:view animated:YES];
    self.hidesBottomBarWhenPushed = NO;
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
