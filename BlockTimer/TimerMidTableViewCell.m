//
//  TimerMidTableViewCell.m
//  BlockTimer
//
//  Created by Cuong on 10/16/16.
//  Copyright © 2016 VuManhCuong. All rights reserved.
//

#import "TimerMidTableViewCell.h"
#import "Auto-resizeFont.h"

@implementation TimerMidTableViewCell
@synthesize totalTimeCounterLabel;
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
//    CGFloat height = [UIScreen mainScreen].bounds.size.height;
//    // iPhone4/4S
//    if (height == 480) {
//        self.blockTitleLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.blockTitleLabel.frame)/120];
//        self.blockNoteLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.blockNoteLabel.frame)/120];
//        
//        self.completedPercentLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.completedPercentLabel.frame)/1.2];
//        
//        self.elapsedTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.elapsedTimeLabel.frame)/1.5];
//        self.elapsedTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.elapsedTimeCounterLabel.frame)/1];
//        
//        self.remainTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainTimeLabel.frame)/1];
//        self.remainTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainTimeCounterLabel.frame)/1];
//        
//        self.totalTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalTimeLabel.frame)/1];
//        self.totalTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalTimeCounterLabel.frame)/1];
//    }
//    // iPhone5/5S
//    else if (height == 568){
//        self.completedPercentLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.completedPercentLabel.frame)/1.1];
//    
//        self.blockTitleLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.blockTitleLabel.frame)/80];
//        self.blockNoteLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.blockNoteLabel.frame)/80];
//    
//        self.elapsedTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.elapsedTimeLabel.frame)/1.2];
//        self.elapsedTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.elapsedTimeCounterLabel.frame)/1];
//    
//        self.remainTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainTimeLabel.frame)/0.8];
//        self.remainTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainTimeCounterLabel.frame)/1];
//    
//        self.totalTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalTimeLabel.frame)/0.8];
//        self.totalTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalTimeCounterLabel.frame)/1];
//    }
//    // iPhone6/7
//    else if (height == 667){
//        self.completedPercentLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.completedPercentLabel.frame)/0.68];
//        
//        self.blockTitleLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.blockTitleLabel.frame)/80];
//        self.blockNoteLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.blockNoteLabel.frame)/80];
//        
//        self.elapsedTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.elapsedTimeLabel.frame)/0.8];
//        self.elapsedTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.elapsedTimeCounterLabel.frame)/0.7];
//        
//        self.remainTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainTimeLabel.frame)/0.55];
//        self.remainTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainTimeCounterLabel.frame)/0.6];
//        
//        self.totalTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalTimeLabel.frame)/0.55];
//        self.totalTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalTimeCounterLabel.frame)/0.6];
//    }
//    // iPhone6Plus/7Plus
//    else {
//        self.completedPercentLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.completedPercentLabel.frame)/1];
//        
//        self.blockTitleLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.blockTitleLabel.frame)/1];
//        self.blockNoteLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.blockNoteLabel.frame)/1];
//        
//        self.elapsedTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.elapsedTimeLabel.frame)/1];
//        self.elapsedTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.elapsedTimeCounterLabel.frame)/1];
//        
//        self.remainTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainTimeLabel.frame)/1];
//        self.remainTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainTimeCounterLabel.frame)/1];
//        
//        self.totalTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalTimeLabel.frame)/1];
//        self.totalTimeCounterLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalTimeCounterLabel.frame)/1];
//    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
