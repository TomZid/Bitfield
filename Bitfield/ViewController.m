//
//  ViewController.m
//  Bitfield
//
//  Created by 朱海波 on 16/07/2017.
//  Copyright © 2017 朱海波. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () <SecondViewControllerDelegate>

@end

@implementation ViewController
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    SecondViewController *vc = (SecondViewController*)segue.destinationViewController;
    vc.delegate = self;
}

#pragma mark - SecondViewControllerDelegate
- (void)secondVCWillShow {
    
}

@end
