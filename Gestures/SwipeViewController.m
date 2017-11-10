//
//  SwipeViewController.m
//  Gestures
//
//  Created by Larry Luk on 2017-11-09.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@end

@implementation SwipeViewController

-(void)viewDidLoad {
    
    [super viewDidLoad];
    CGFloat width = 300;
    CGFloat height = 100;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    
    UIView *boxViewBottom = [[UIView alloc]initWithFrame:frame];
    boxViewBottom.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:boxViewBottom];
    
    UIView *boxViewTop = [[UIView alloc]initWithFrame:CGRectMake(0, 0, width, height)];
    boxViewTop.backgroundColor = [UIColor grayColor];
    [boxViewBottom addSubview:boxViewTop];
    
    UISwipeGestureRecognizer *swipeGestureright = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(viewSwiped:)];
    [boxViewTop addGestureRecognizer:swipeGestureright];
    
    UISwipeGestureRecognizer *swipeGestureleft = [[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(viewSwiped:)];
    [swipeGestureleft setDirection:UISwipeGestureRecognizerDirectionLeft];
    [boxViewTop addGestureRecognizer:swipeGestureleft];
    
    
    
}

-(void)viewSwiped:(UISwipeGestureRecognizer*)sender{
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionLeft:
            sender.view.frame = CGRectMake(0, 0, 150, 100);
            break;
        case UISwipeGestureRecognizerDirectionRight:
            sender.view.frame = CGRectMake(0, 0, 300, 100);
            break;
        default:
            break;
    }
    

    
}
@end
