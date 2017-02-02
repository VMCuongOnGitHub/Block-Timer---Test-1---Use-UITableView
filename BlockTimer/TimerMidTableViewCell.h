//
//  TimerMidTableViewCell.h
//  BlockTimer
//
//  Created by Cuong on 10/16/16.
//  Copyright © 2016 VuManhCuong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimerMidTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *blockTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *blockNoteLabel;

@property (weak, nonatomic) IBOutlet UILabel *completedPercentLabel;

@property (weak, nonatomic) IBOutlet UILabel *elapsedTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *elapsedTimeCounterLabel;

@property (weak, nonatomic) IBOutlet UILabel *totalTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalTimeCounterLabel;

@property (weak, nonatomic) IBOutlet UILabel *remainTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *remainTimeCounterLabel;

@property (weak, nonatomic) IBOutlet UIProgressView *blockProgressBar;
@end
