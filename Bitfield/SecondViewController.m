//
//  SecondViewController.m
//  Bitfield
//
//  Created by 朱海波 on 16/07/2017.
//  Copyright © 2017 朱海波. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    struct {
        unsigned int isResponse_WillShow : 1;
        unsigned int isResponse_DidShow : 1;
    } delegateFlags;
}
@end

@implementation SecondViewController
- (void)setDelegate:(id<SecondViewControllerDelegate>)delegate {
    _delegate = delegate;
    self->delegateFlags.isResponse_WillShow = [delegate respondsToSelector:@selector(secondVCWillShow)];
    self->delegateFlags.isResponse_DidShow = [delegate respondsToSelector:@selector(secondVCDidShow)];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if (self->delegateFlags.isResponse_WillShow) {
        [self.delegate secondVCWillShow];
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if (self->delegateFlags.isResponse_DidShow) {
        [self.delegate secondVCDidShow];
    }
}

@end
