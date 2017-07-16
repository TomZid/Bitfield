//
//  SecondViewController.h
//  Bitfield
//
//  Created by 朱海波 on 16/07/2017.
//  Copyright © 2017 朱海波. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewControllerDelegate <NSObject>
@optional
- (void)secondVCWillShow;
- (void)secondVCDidShow;

@end

@interface SecondViewController : UIViewController

@property (nonatomic, weak) id<SecondViewControllerDelegate> delegate;

@end
