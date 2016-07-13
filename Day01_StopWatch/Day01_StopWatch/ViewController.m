//
//  ViewController.m
//  Day01_StopWatch
//
//  Created by PurpleK Fung on 16/7/12.
//  Copyright © 2016年 PurpleK Fung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self resetTimer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPlayClick:(UIButton *)sender {
    if (_mIsPlaying) {
        return;
    }
    [_playButton setEnabled:false];
    [_pauseButton setEnabled:true];
    _mTimer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTimer) userInfo:nil repeats:true];
    _mIsPlaying = true;
}

- (IBAction)onPauseClick:(UIButton *)sender {
    [_playButton setEnabled:true];
    [_pauseButton setEnabled:false];
    [_mTimer invalidate];
    _mIsPlaying = false;
}

- (IBAction)onResetClick:(id)sender {
    [self resetTimer];
}


- (void) updateTimer {
    _mTime = _mTime + 0.1;
    [_timeLabel setText: [NSString stringWithFormat:@"%.1f", _mTime]];
}

- (void) resetTimer {
    _mTime = 0.0;
    [_timeLabel setText: [NSString stringWithFormat:@"%.1f", _mTime]];
    [_mTimer invalidate];
    _mIsPlaying = false;
    [_playButton setEnabled:true];
    [_pauseButton setEnabled:true];
}

@end
