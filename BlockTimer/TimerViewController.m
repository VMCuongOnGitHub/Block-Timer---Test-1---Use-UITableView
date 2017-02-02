//
//  TImerViewController.m
//  BlockTimer
//
//  Created by Cuong on 10/15/16.
//  Copyright © 2016 VuManhCuong. All rights reserved.
//

#import "TimerViewController.h"
#import "TimerMidTableViewCell.h"
#import "MZTimerLabel.h"



static NSString *const TimerMidTableViewCellIdentifier = @"TimerMidTableViewCell";
@interface TimerViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    MZTimerLabel *timer;
    int timerIndex;
    NSIndexPath *runningIndexPath;
    
    NSString *stringTest;
    UILabel *labelTest;
}
@property (weak, nonatomic) IBOutlet UITableView *timerTableView;

@property (weak, nonatomic) IBOutlet UILabel *totalPercentageLabel;


@property (weak, nonatomic) IBOutlet UILabel *finishedLabel;
@property (weak, nonatomic) IBOutlet UILabel *finishedTimeLabel;


@property (weak, nonatomic) IBOutlet UILabel *remainingLabel;
@property (weak, nonatomic) IBOutlet UILabel *remainingTimeLabel;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *totalProgressBar;

@property (weak, nonatomic) IBOutlet UIButton *pauseButton;
@property (weak, nonatomic) IBOutlet UIView *stopButton;


@end

@implementation TimerViewController
@synthesize blocks;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    UIBarButtonItem *stopClock = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(stopClockButtonDidPress:)];
    self.navigationItem.leftBarButtonItem = stopClock;
    [self.timerTableView registerNib:[UINib nibWithNibName:@"TimerMidTableViewCell" bundle:nil] forCellReuseIdentifier:TimerMidTableViewCellIdentifier];
    
    CGFloat height = [UIScreen mainScreen].bounds.size.height;
    
    // iPhone4/4S
    if (height == 480) {
        self.totalPercentageLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalPercentageLabel.frame)/0.9];
        
        self.finishedLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.finishedLabel.frame)/1.3];
        self.finishedTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.finishedTimeLabel.frame)/1.2];
        
        self.remainingLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainingLabel.frame)/1.3];
        self.remainingTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainingTimeLabel.frame)/1.2];
    }
    // iPhone5/5S
    else if (height == 568){
        self.totalPercentageLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalPercentageLabel.frame)/0.9];
        
        self.finishedLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.finishedLabel.frame)/1.3];
        self.finishedTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.finishedTimeLabel.frame)/1.2];
        
        self.remainingLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainingLabel.frame)/1.3];
        self.remainingTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainingTimeLabel.frame)/1.2];
    }
    // iPhone6/7
    else if (height == 667){
        self.totalPercentageLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalPercentageLabel.frame)/0.85];
        
        self.finishedLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.finishedLabel.frame)/0.99];
        self.finishedTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.finishedTimeLabel.frame)/0.89];
        
        self.remainingLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainingLabel.frame)/0.99];
        self.remainingTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainingTimeLabel.frame)/0.89];
    }
    // iPhone6Plus/7Plus
    else {
        self.totalPercentageLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.totalPercentageLabel.frame)/0.8];

        self.finishedLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.finishedLabel.frame)/0.9];
        self.finishedTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.finishedTimeLabel.frame)/0.8];
        
        self.remainingLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainingLabel.frame)/0.9];
        self.remainingTimeLabel.font = [UIFont systemFontOfSize:CGRectGetHeight(self.remainingTimeLabel.frame)/0.8];
    }
    
    timerIndex = 0;
    _timerTableView.scrollEnabled = YES;

}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return CGRectGetHeight(self.timerTableView.frame)/3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.blocks.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    TimerMidTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TimerMidTableViewCellIdentifier forIndexPath:indexPath];
    
    
    if (indexPath.row == timerIndex) {
        Block *blockTimer = (Block *)[self.blocks objectAtIndex:timerIndex];
        cell.blockTitleLabel.text = blockTimer.blockName;
        cell.blockNoteLabel.text = blockTimer.blockNote;
        cell.totalTimeCounterLabel.text = blockTimer.blockTimeInterval;
        
        timer = [[MZTimerLabel alloc]initWithLabel:cell.totalTimeCounterLabel andTimerType:MZTimerLabelTypeTimer];
        [timer setCountDownTime:[blockTimer.blockTimeInterval intValue]];
        timer.delegate = self;
    }
    
    return cell;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSArray *vis = self.timerTableView.indexPathsForVisibleRows;
//    if (vis.count < 3) {
//        NSLog(@"nothing happend");
//    }else{
//        [self.timerTableView selectRowAtIndexPath:vis[1] animated:NO scrollPosition:UITableViewScrollPositionNone];
//        [tableView scrollToRowAtIndexPath:vis[1] atScrollPosition:UITableViewScrollPositionMiddle animated:YES];
//    }
//}
//
//-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
//    // Auto-scroll to top row
//    [UIView animateWithDuration:0.3 animations:^{
//        int smt = (int)self.timerTableView.contentOffset.y % (int)(CGRectGetHeight(self.timerTableView.frame)/3);
//        self.timerTableView.contentOffset = CGPointMake(0,self.timerTableView.contentOffset.y - smt);
//    }];
//}
//
//- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
//    [UIView animateWithDuration:0.3 animations:^{
//        int smt = (int)self.timerTableView.contentOffset.y % (int)(CGRectGetHeight(self.timerTableView.frame)/3);
//        self.timerTableView.contentOffset = CGPointMake(0,self.timerTableView.contentOffset.y - smt);
//        
//    }];
//}
-(void)timerLabel:(MZTimerLabel*)timerLabel finshedCountDownTimerWithTime:(NSTimeInterval)countTime{
    if (timerIndex == self.blocks.count - 1) {
        timerIndex = (int)self.blocks.count - 1;
    }else{
        timerIndex++;
    }
    [self.timerTableView reloadData];

}
- (IBAction)pauseButtonDidPress:(id)sender {
//
//    if (timerIndex == 0) {
        [timer start];
//    }else{
//        if (![timer counting]) {
//            [timer startWithEndingBlock:^(NSTimeInterval countTime) {
//                
//                Block *blockTimer = (Block *)[self.blocks objectAtIndex:timerIndex];
//                [timer setCountDownTime:[blockTimer.blockTimeInterval intValue]];
//                [self.timerTableView reloadData];
//            }];
//        }
//    }

}
- (IBAction)stopButtonDidPress:(id)sender {
}
-(IBAction)stopClockButtonDidPress:(id)sender{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
