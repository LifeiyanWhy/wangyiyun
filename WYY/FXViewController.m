//
//  FXViewController.m
//  WY
//
//  Created by lifeiyan on 17/7/20.
//  Copyright (c) 2017年 lifeiyan. All rights reserved.
//

#import "FXViewController.h"
#import "FXUIView.h"
#import "cellTableViewCell.h"
#import "secondViewController.h"


@interface FXViewController ()<UISearchBarDelegate,UITableViewDataSource,UITableViewDelegate>{
    UISearchBar *sea;
    UITableView *tab;
    UIScrollView *scr;
    UIPageControl *pag;
}
@end

@implementation FXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    UIImage *image= [UIImage imageNamed:@"娱乐_播放中2.png"];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(rightbutton)];
    self.navigationItem.rightBarButtonItem.tintColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"网易云.png"] style:UIBarButtonItemStylePlain target:self action:@selector(rightbutton)];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    
    
    tab = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 375, 690)];
    tab.delegate = self;
    tab.dataSource = self;
    
    FXUIView *view = [[FXUIView alloc] initWithFrame:CGRectMake(0, 0, 375, 300)];
    tab.tableHeaderView = view;
    
    tab.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:tab];
    
    sea.delegate = self;
    sea = [[UISearchBar alloc] initWithFrame:CGRectMake(50, 10, 200, 30)];
    sea.clearsContextBeforeDrawing = YES;
    sea.placeholder = @"搜索音乐、歌词、电台";
    sea.layer.masksToBounds = YES;
    sea.layer.cornerRadius = 27;
    [sea.layer setBorderColor:[UIColor whiteColor].CGColor];
    [self.navigationItem setTitleView:sea];
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if(section == 0){
        return 2;
    }else{
        return 0;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView  cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"cell";
    cellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if(cell == nil){
        cell= [[cellTableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    if(indexPath.section == 0){
        cell= [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
        cell.textLabel.text = @"推荐歌单 >";
    }else{
        [cell.button1 setImage:[UIImage imageNamed:@"222.jpg"] forState:UIControlStateNormal];
    }
    return cell;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        return 50;
    }else{
        return 270;
    }
}
//- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
//    sea.frame = CGRectMake(5, 10, 300, 0);
//}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [sea resignFirstResponder];
    [self.view endEditing:YES];
}
-(void)rightbutton{
        NSLog(@"right");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [sea resignFirstResponder];
    [self.view endEditing:YES];
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [sea resignFirstResponder];
    return indexPath;
}
/*
#pragma mark - Navigation
   bn  // In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
@end
