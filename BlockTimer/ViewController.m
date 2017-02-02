//
//  ViewController.m
//  BlockTimer
//
//  Created by Mac on 7/17/16.
//  Copyright © 2016 VuManhCuong. All rights reserved.
//

#import "ViewController.h"
#import "CreateNewPresetViewController.h"
#import "PresetTimerListViewController.h"
#import "TestViewController.h"

#import "AppHelper.h"
#import "UIColor+Hex.h"

#import <QuartzCore/QuartzCore.h>


@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIButton *settingButton;
@property (strong, nonatomic) IBOutlet UILabel *welcomeLabel;
@property (strong, nonatomic) IBOutlet UILabel *userNameLabel;
@property (strong, nonatomic) IBOutlet UIImageView *logoBlockTimerImageView;
@property (strong, nonatomic) IBOutlet UILabel *sloganLabel;
@property (strong, nonatomic) IBOutlet UILabel *sloganHighlightLabel;
@property (strong, nonatomic) IBOutlet UIView *sloganDescorationLineView;
@property (strong, nonatomic) IBOutlet UIView *sloganView;
@property (strong, nonatomic) IBOutlet UIButton *presetTimerButton;
@property (strong, nonatomic) IBOutlet UIButton *scheduleButton;
@property (strong, nonatomic) IBOutlet UIView *tipView;
@property (strong, nonatomic) IBOutlet UILabel *tipLabel;
@property (strong, nonatomic) IBOutlet UIView *tipDecorationLineView;
@property (strong, nonatomic) IBOutlet UIButton *statisticsButton;
@end

@implementation ViewController

- (void)setupUI{
    
    /************* Config *************/
    // CenterPoint
    float centerPointX = CGRectGetHeight(self.view.frame)/2;
    float centerPointY = CGRectGetWidth(self.view.frame)/2;
    
    // Button
    
    /************* Decorate View *************/
    // Logo Image
    self.logoBlockTimerImageView.frame = CGRectMake(centerPointY, 8, 13, 21);
    
    // Slogan View
    [AppHelper createWithView:self.sloganView withBackgroundColor:[UIColor colorWithHexString:@"faf9f9"]];
    self.sloganHighlightLabel.textColor = [UIColor colorWithHexString:@"f26a42"];
    
    // Slogan Line
    [AppHelper createWithView:self.sloganDescorationLineView withBackgroundColor:[UIColor colorWithHexString:@"adadad"]];
    
    // PresetTimer Button
    [AppHelper createWithView:self.presetTimerButton withBackgroundColor:[UIColor colorWithHexString:@"ffffff"]];
    self.presetTimerButton.titleLabel.tintColor = [UIColor colorWithHexString:@"41ddb2"];
    
    // Schedule Button
    [AppHelper createWithView:self.scheduleButton withBackgroundColor:[UIColor colorWithHexString:@"ffffff"]];
    self.scheduleButton.titleLabel.tintColor = [UIColor colorWithHexString:@"41ddb2"];

    // Statistics Button
    [AppHelper createWithView:self.statisticsButton withBackgroundColor:[UIColor colorWithHexString:@"ffffff"]];
    self.statisticsButton.titleLabel.tintColor = [UIColor colorWithHexString:@"41ddb2"];
    
    // Tip View
    [AppHelper createWithView:self.tipView withBackgroundColor:[UIColor colorWithHexString:@"ffffff"]];

    // Tip Line
    [AppHelper createWithView:self.tipDecorationLineView withBackgroundColor:[UIColor colorWithHexString:@"adadad"]];
}

#pragma mark - viewDidLoad
- (void)viewDidLoad {
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self.navigationController setNavigationBarHidden:YES];
    [super viewDidLoad];
    [self setupUI];
    
}
-(void)viewWillAppear:(BOOL)animated{
    [self.navigationController setNavigationBarHidden:YES animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Action Button
- (IBAction)presetTimerButtonDidPress:(id)sender {
    
    PresetTimerListViewController *presetTimerListViewController = [[PresetTimerListViewController alloc] initWithNibName:@"PresetTimerListViewController" bundle:nil];
    [self.navigationController pushViewController:presetTimerListViewController animated:YES];
    
    
}
- (IBAction)createNewPresetButtonDidPress:(id)sender {
    CreateNewPresetViewController *createNewPresetViewController = [[CreateNewPresetViewController alloc] initWithNibName:@"CreateNewPresetViewController" bundle:nil];
    UINavigationController *navController = [[UINavigationController alloc] initWithRootViewController:createNewPresetViewController];
    [self.navigationController presentViewController:navController animated:YES completion:nil];
    
}

@end
