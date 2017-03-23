//
//  ViewController.m
//  NavWaves
//
//  Created by Eason on 17/1/17.
//  Copyright © 2017年 YLL. All rights reserved.
//

#import "ViewController.h"
#import "YLLView.h"

@interface ViewController ()
@property (nonatomic, strong) YLLView *headerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0 green:172/255.0 blue:238/255.0 alpha:1.00];
    [self.navigationController.navigationBar addSubview:self.headerView];
    [self.navigationController.navigationBar sendSubviewToBack:self.headerView];
    // Do any additional setup after loading the view, typically from a nib.
}
- (YLLView *)headerView{
    if (!_headerView) {
        _headerView = [[YLLView alloc] initWithFrame:CGRectMake(0, -20, self.view.frame.size.width, 64)];
        _headerView.backgroundColor = [UIColor colorWithRed:0 green:172/255.0 blue:238/255.0 alpha:1.00];
        _headerView.yllBlock = ^(CGFloat currentY){
        };
        [_headerView startWaveAnimation];
    }
    return _headerView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
