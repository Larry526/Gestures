//
//  PinchViewController.m
//  Gestures
//
//  Created by Larry Luk on 2017-11-09.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "PinchViewController.h"

@interface PinchViewController ()

@end

@implementation PinchViewController

-(void)viewDidLoad {
    
    [super viewDidLoad];
    CGFloat width = 100;
    CGFloat height = 100;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    
    UIView *boxView = [[UIView alloc]initWithFrame:frame];
    boxView.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:boxView];
    
    UIPinchGestureRecognizer *pinchGesture = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(viewPinched:)];
    [boxView addGestureRecognizer:pinchGesture];
}

-(void)viewPinched:(UIPinchGestureRecognizer*)sender{
    CGFloat scale = sender.scale;
    sender.view.transform = CGAffineTransformMakeScale(scale, scale);
    scale = 1.0;
}

@end
