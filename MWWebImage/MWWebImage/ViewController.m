//
//  ViewController.m
//  MWWebImage
//
//  Created by Mouty on 16/3/17.
//  Copyright © 2016年 Mouty. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+Extra.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIImageView * imgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.view addSubview:imgView];
    [imgView setImageWithUrl:@"http://image.baidu.com/search/down?tn=download&word=download&ie=utf8&fr=detail&url=http%3A%2F%2Fp4.image.hiapk.com%2Fuploads%2Fallimg%2F150617%2F7730-15061GH603-51.jpg&thumburl=http%3A%2F%2Fimg0.imgtn.bdimg.com%2Fit%2Fu%3D2637615612%2C1367090280%26fm%3D21%26gp%3D0.jpg"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
