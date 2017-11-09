//
//  PanViewController.m
//  Gestures
//
//  Created by Larry Luk on 2017-11-09.
//  Copyright © 2017 App App Studio. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController


- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
    
//    CGPoint locationInView = [sender locationInView:self.view];
//    sender.view.center = locationInView;
    
    CGPoint translationInView = [sender translationInView:self.view];
    NSLog(@"%@", NSStringFromCGPoint(translationInView));
    CGPoint oldLocation = sender.view.center;
    CGPoint newLocation = CGPointMake(oldLocation.x + translationInView.x, oldLocation.y + translationInView.y);
    [sender setTranslation:CGPointZero inView:self.view];
    sender.view.center = newLocation;
    
}


@end
