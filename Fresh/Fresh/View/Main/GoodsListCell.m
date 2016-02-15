//
//  GoodsListCell.m
//  Fresh
//
//  Created by NADA_BM on 16/2/15.
//  Copyright © 2016年 NADA_BM. All rights reserved.
//

#import "GoodsListCell.h"

@implementation GoodsListCell

- (void)awakeFromNib {
    // Initialization code
    _isSelected=0;
}

-(NSString *)goodsCount
{
    return _goodsNumLabel.text;
}

-(void)setIsSelected:(BOOL)selected
{
    _isSelected=selected;
}


#pragma mark - ButtonAction
-(void)buttonAction:(id)sender
{
    UIButton *btn=sender;
    switch (btn.tag) {
        case 0://勾选按钮
        {
            if (!_isSelected) {
                [_selectBtn setImage:[UIImage imageNamed:@"tick1"] forState:UIControlStateNormal];
            }else{
                [_selectBtn setImage:[UIImage imageNamed:@"tick2"] forState:UIControlStateNormal];
            }
            _isSelected=!_isSelected;
        }
            break;
        case 1://-
        {
            NSInteger count=[_goodsNumLabel.text integerValue];
            if (count>1) {
                _goodsNumLabel.text=[NSString stringWithFormat:@"%ld",(long)--count];
            }
        }
            break;
        case 2://+
        {
            NSInteger count=[_goodsNumLabel.text integerValue];
            if (count<100) {
                _goodsNumLabel.text=[NSString stringWithFormat:@"%ld",(long)++count];
            }
        }
            break;
        default:
            break;
    }
}


@end
