//
//  TapViewController.m
//  Gestures
//
//  Created by Larry Luk on 2017-11-09.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    CGFloat width = 100;
    CGFloat height = 100;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    UIView *boxView = [[UIView alloc]initWithFrame:frame];
    boxView.backgroundColor = [UIColor brownColor];
    [self.view addSubview:boxView];
    
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(viewTapped:)];
    [boxView addGestureRecognizer:tapGesture];
}


-(void)viewTapped:(UITapGestureRecognizer*)sender {
    
    if (sender.state == UIGestureRecognizerStateEnded) {
        UIColor *color = [sender.view.backgroundColor isEqual: [UIColor brownColor]] ? [UIColor blackColor] : [UIColor brownColor];
        sender.view.backgroundColor = color;
    }
    
}

@end
