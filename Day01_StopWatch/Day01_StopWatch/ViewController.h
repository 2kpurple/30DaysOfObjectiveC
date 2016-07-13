//
//  ViewController.h
//  Day01_StopWatch
//
//  Created by PurpleK Fung on 16/7/12.
//  Copyright © 2016年 PurpleK Fung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *timeLabel;

@property (weak, nonatomic) IBOutlet UIButton *playButton;

@property (weak, nonatomic) IBOutlet UIButton *pauseButton;

@property float mTime;

@property BOOL mIsPlaying;

@property (weak) NSTimer* mTimer;

- (void) updateTimer;

- (void) resetTimer;

@end

