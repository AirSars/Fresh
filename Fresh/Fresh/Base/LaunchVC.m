//
//  LaunchVC.m
//  Fresh
//
//  Created by NADA_BM on 15/12/22.
//  Copyright © 2015年 NADA_BM. All rights reserved.
//

#import "LaunchVC.h"
#import "UIImage+Addtions.h"
#import "FTabBar.h"
#import "JHChainableAnimations.h"
#define JMNewfeatureImageCount 4

@interface LaunchVC () <UIScrollViewDelegate>

@property (nonatomic, weak) UIPageControl *pageControl;


- (void)setupScrollView;
- (void)setupPageControl;
- (void)setupLastImageView:(UIImageView *)imageView;
- (void)setupStartButton:(UIImageView *)imageView;

@end

@implementation LaunchVC
{
    UIScrollView *scrollView;
}

#pragma mark ---------------------
#pragma mark - CycLife

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [UIApplication sharedApplication].statusBarHidden = YES;
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self setupScrollView]; // 添加UISrollView
    [self setupPageControl];    // 添加pageControl
}

#pragma mark ---------------------
#pragma mark - Methods

//添加UISrollView
- (void)setupScrollView
{
    // 添加UISrollView
    scrollView = [[UIScrollView alloc] init];
    scrollView.frame = self.view.bounds;
    scrollView.bounces = NO;
    scrollView.delegate = self;
    [self.view addSubview:scrollView];
    
    // 添加图片
    CGFloat imageW = KFrameWidth;
    CGFloat imageH = KFrameHeight;
    for (int i = 0; i<JMNewfeatureImageCount; i++) {
        // 创建UIImageView
        UIImageView *imageView = [[UIImageView alloc] init];
//        NSString *name = [NSString stringWithFormat:@"banner%d.jpg", i + 1];
//        imageView.image = [UIImage imageNamed:name];
        imageView.image=[UIImage imageWithContentFileName:@"launch.jpg"];
        [scrollView addSubview:imageView];
        
        // 设置frame
        CGRect frame=imageView.frame;
        frame.origin.y = 0;
        frame.size.width = imageW;
        frame.size.height = imageH;
        frame.origin.x = i * imageW;
        imageView.frame=frame;
        
        // 给最后一个imageView添加按钮
        if (i == JMNewfeatureImageCount - 1) {
            [self setupLastImageView:imageView];
        }
    }
    
    // 3.设置其他属性
    scrollView.contentSize = CGSizeMake(JMNewfeatureImageCount * imageW, 0);
    scrollView.pagingEnabled = YES;
    scrollView.showsHorizontalScrollIndicator = NO;
}

//添加pageControl
- (void)setupPageControl
{
    // 添加PageControl
    UIPageControl *pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(self.view.frame.size.width * 0.5, self.view.frame.size.height - 20, 0, 0)];
    pageControl.numberOfPages = JMNewfeatureImageCount;
    [self.view addSubview:pageControl];
    
    // 设置圆点的颜色
    self.pageControl = pageControl;
//    [self changePageControlImage:self.pageControl];
}


//设置最后一个UIImageView中的内容
- (void)setupLastImageView:(UIImageView *)imageView
{
    imageView.userInteractionEnabled = YES;
    
    // 添加开始按钮
    [self setupStartButton:imageView];
}

//添加开始按钮
- (void)setupStartButton:(UIImageView *)imageView
{
    // 1.添加开始按钮
    UIButton *startButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [imageView addSubview:startButton];
    
    // 2.设置背景图片
//    [startButton setBackgroundImage:[UIImage imageNamed:@"banner_button_moren.jpg"] forState:UIControlStateNormal];
//    [startButton setBackgroundImage:[UIImage imageNamed:@"banner_button_dianji.jpg"] forState:UIControlStateHighlighted];
    [startButton setBackgroundColor:[UIColor redColor]];
    
    // 3.设置frame
    startButton.frame=CGRectMake(imageView.frame.size.width*0.3, KFrameHeight*0.8, 160, 60);
    
    // 4.设置文字
    [startButton setTitle:@"立即体验" forState:UIControlStateNormal];
    [startButton setTitle:@"" forState:UIControlStateHighlighted];
    [startButton addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
    [startButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
}


//改变pagecontrol中圆点样式
//- (void)changePageControlImage:(UIPageControl *)pageControl
//{
//    static UIImage *imgCurrent = nil;
//    static UIImage *imgOther = nil;
//    static dispatch_once_t onceToken;
//    
//    dispatch_once(&onceToken, ^{
//        imgCurrent = [UIImage imageNamed:@"yuan_01"];
//        imgOther = [UIImage imageNamed:@"yuan1"];
//    });
//    
//    
//    if (kSystemVersionMoreThan7) {
//        [pageControl setValue:imgCurrent forKey:@"_currentPageImage"];
//        [pageControl setValue:imgOther forKey:@"_pageImage"];
//    } else {
//        for (int i = 0;i < pageControl.numberOfPages; i++) {
//            UIImageView *imgv = [pageControl.subviews objectAtIndex:i];
//            imgv.frame = CGRectMake(imgv.frame.origin.x, imgv.frame.origin.y, 20, 20);
//            imgv.image = pageControl.currentPage == i ? imgCurrent : imgOther;
//        }
//    }
//}

#pragma mark ---------------------
#pragma mark - Events

//立即体验
- (void)start
{
    [UIApplication sharedApplication].statusBarHidden = NO;
    
    //判断类型
    if (self.newfeatureType == NewfeatureTypeFromeWelcom) {
        [scrollView removeFromSuperview];
        CATransition *anima = [CATransition animation];
        anima.type = @"cube";//设置动画的类型
        anima.subtype = kCATransitionFromRight; //设置动画的方向
        anima.duration = 0.6f;
        anima.delegate=self;
        [self.view.layer addAnimation:anima forKey:@"revealAnimation"];
    }else
    {
        [self.navigationController popViewControllerAnimated:YES];
        [self.navigationController setNavigationBarHidden:NO animated:NO];
    }
    
}

#pragma mark - UIScrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView1
{
    // 获得页码
    CGFloat doublePage = scrollView1.contentOffset.x / scrollView1.frame.size.width;
    int intPage = (int)(doublePage + 0.5);
    
    // 设置页码
    self.pageControl.currentPage = intPage;
//    [self changePageControlImage:self.pageControl];
}

-(void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag
{
    [UIApplication sharedApplication].statusBarHidden = NO;
    FTabBar *bar=[[FTabBar alloc]init];
    bar.selectedIndex=0;
    UIWindow *window=[UIApplication sharedApplication].keyWindow;
    window.rootViewController=bar;
}

@end
