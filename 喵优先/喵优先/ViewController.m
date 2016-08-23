//
//  ViewController.m
//  喵优先
//
//  Created by yyh on 16/8/16.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "ViewController.h"
#import "HeaderViewController.h"
@interface ViewController ()
@property (nonatomic ,strong) UIScrollView *scorllView;

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.scorllView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    self.scorllView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height*2);
    HeaderViewController *headerVC = [[HeaderViewController alloc]init];
    headerVC.view.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height*0.4);
    [self addChildViewController:headerVC];
    [self.scorllView addSubview:headerVC.view];
    [self.view addSubview:self.scorllView];
    self.scorllView.showsVerticalScrollIndicator = NO;
    self.scorllView.bounces = NO;
    self.scorllView.alwaysBounceHorizontal = YES;
}
-(void)createSV{
    self.scorllView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
    self.scorllView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height*2);
    HeaderViewController *headerVC = [[HeaderViewController alloc]init];
    headerVC.view.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height*0.4);
    [self addChildViewController:headerVC];
    [self.scorllView addSubview:headerVC.view];
    [self.view addSubview:self.scorllView];
    self.scorllView.showsVerticalScrollIndicator = NO;
    self.scorllView.bounces = NO;
    self.scorllView.alwaysBounceHorizontal = YES;
    
}


@end
