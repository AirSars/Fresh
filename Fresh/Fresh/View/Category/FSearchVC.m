//
//  FSearchVC.m
//  Fresh
//
//  Created by NADA_BM on 16/2/16.
//  Copyright © 2016年 NADA_BM. All rights reserved.
//

#import "FSearchVC.h"

@interface FSearchVC ()<UISearchBarDelegate>

@end

@implementation FSearchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setupUI];
}

-(void)setupUI
{
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 250, 50)];
    UISearchBar *searchBar=[[UISearchBar alloc]initWithFrame:CGRectMake(0, 0, 250, 50)];
    searchBar.delegate=self;
    searchBar.translucent = YES;
    searchBar.backgroundImage = [[UIImage alloc] init];
    searchBar.barTintColor = [UIColor clearColor];
    searchBar.backgroundColor = [UIColor clearColor];
    searchBar.tintColor = [UIColor grayColor];
    searchBar.placeholder=@"Search";
    [view addSubview:searchBar];
    self.navigationItem.titleView=view;
}



@end
