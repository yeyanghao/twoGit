//
//  HeaderViewController.m
//  喵优先
//
//  Created by yyh on 16/8/17.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "HeaderViewController.h"
#import "aaaViewController.h"
@interface HeaderViewController ()

@end

@implementation HeaderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    for (int i = 1; i < 5; i++) {
        UIImageView *imageView = [self.view viewWithTag:i+80];
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"home%d",i]];
    }
    
    
}

- (IBAction)goNextVC:(UIButton*)sender {
    aaaViewController *aaaVC = [[aaaViewController alloc]init];
    aaaVC.titleName = [NSString stringWithFormat:@"第%ld个数据",sender.tag-100];
    [self.navigationController pushViewController:aaaVC animated:YES];
}





@end
