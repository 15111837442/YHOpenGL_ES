//
//  ViewController.m
//  YHpanorama
//
//  Created by LYH on 2018/8/24.
//  Copyright © 2018年 Toocms. All rights reserved.
//

#import "ViewController.h"
#import "YHPanoramaVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"点击屏幕看全景";
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    YHPanoramaVC *vc=[[YHPanoramaVC alloc]init];
    NSLog(@"看全景");
    [self.navigationController pushViewController:vc animated:YES];
}


@end
