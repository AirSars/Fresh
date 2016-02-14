//
//  MyPageVC.h
//  Fresh
//
//  Created by NADA_BM on 15/12/25.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "BasicVC.h"

@interface MyPageVC : BasicVC

@property (weak,nonatomic) IBOutlet UICollectionView *collectionView;
@property (assign,nonatomic) BOOL isLogin;
@property (weak,nonatomic) IBOutlet UIView *loginView;
@property (weak,nonatomic) IBOutlet UIView *hasLoginView;

-(IBAction)buttonAction:(id)sender;

@end
