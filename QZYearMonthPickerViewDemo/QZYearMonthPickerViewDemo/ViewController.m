//
//  ViewController.m
//  QZYearMonthPickerViewDemo
//
//  Created by Quentin Zang on 2020/11/5.
//

#import "ViewController.h"
#import "QZYearMonthPickerView.h"

@interface ViewController () <QZYearMonthPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIButton *yearButton;

@property (weak, nonatomic) IBOutlet UIButton *monthYearButton;

@property (nonatomic, assign ,getter=isYearShow) BOOL yearShow;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)yearBtnClick:(UIButton *)sender {
    QZYearMonthPickerView *yearView = [[QZYearMonthPickerView alloc] initWithFrame:CGRectZero type:QZStyleTypeYear];
    self.yearShow = YES;
    yearView.delegate = self;
    [yearView show];
}

- (IBAction)monthYearBtnClick:(UIButton *)sender {
    QZYearMonthPickerView *monthView = [[QZYearMonthPickerView alloc] initWithFrame:CGRectZero type:QZStyleTypeYearAndMonth];
    self.yearShow = NO;
    monthView.delegate = self;
    [monthView show];
}

#pragma mark -- QZYearMonthPickerViewDelegate
-(void)didSelectDateResult:(NSString *)resultDate {
    if (self.isYearShow) {
        [self.yearButton setTitle:[resultDate substringToIndex:5] forState:UIControlStateNormal];
    }else{
        [self.monthYearButton setTitle:resultDate forState:UIControlStateNormal];
    }
    
}

@end
