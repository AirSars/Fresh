//
//  FirstPageVC.h
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "BasicVC.h"

@interface FirstPageVC : BasicVC

@property (weak,nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak,nonatomic) IBOutlet UILabel *titleLabel;
@property (weak,nonatomic) IBOutlet UIView *adView;
@property (weak,nonatomic) IBOutlet UICollectionView *collectionView;

@end
