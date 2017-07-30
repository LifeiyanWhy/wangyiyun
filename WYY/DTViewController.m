//
//  DTViewController.m
//  WY
//
//  Created by lifeiyan on 17/7/21.
//  Copyright (c) 2017年 lifeiyan. All rights reserved.
//
#import "WDViewController.h"
#import "DTViewController.h"

@interface DTViewController ()

@end

@implementation DTViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"本地音乐";
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{NSFontAttributeName:[UIFont systemFontOfSize:18],
       NSForegroundColorAttributeName:[UIColor whiteColor]}];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"< 返回" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor whiteColor];
    
}
-(void)back{
    WDViewController *wd = [[WDViewController alloc] init];
//    [self presentViewController:wd animated:YES completion:nil];
    [self.navigationController pushViewController:wd animated:YES];
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
