//
//  YHPanoramaVC.m
//  YHpanorama
//
//  Created by LYH on 2018/8/24.
//  Copyright © 2018年 Toocms. All rights reserved.
//

#import "YHPanoramaVC.h"
#import "PanoramaView.h"

@interface YHPanoramaVC()
{
    PanoramaView *panoramaView;
}
@end
@implementation YHPanoramaVC

- (void)viewDidLoad{
    [super viewDidLoad];
    panoramaView = [[PanoramaView alloc] init];
//    [panoramaView setImageWithName:@"233.jpg"];
    [panoramaView setImage:[UIImage imageNamed:@"500362893"]];
    [panoramaView setOrientToDevice:YES];//陀螺仪
    [panoramaView setTouchToPan:YES];//拖拽
    [panoramaView setPinchToZoom:NO];//缩放
    [panoramaView setShowTouches:YES];//显示触摸点
    [panoramaView setVRMode:NO];//分屏模式
    [self setView:panoramaView];
}

-(void) glkView:(GLKView *)view drawInRect:(CGRect)rect{
    [panoramaView draw];
}

@end
