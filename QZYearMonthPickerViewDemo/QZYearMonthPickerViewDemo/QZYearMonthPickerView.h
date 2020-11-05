//
//  ViewController.m
//  QZYearMonthPickerViewDemo
//
//  Created by Quentin Zang on 2020/11/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger,QZYearMonthStyleType) {
    QZStyleTypeYear = 0,//年
    QZStyleTypeYearAndMonth,//年月
    
};


@protocol QZYearMonthPickerViewDelegate <NSObject>

- (void)didSelectDateResult:(NSString *)resultDate;

@end

@interface QZYearMonthPickerView : UIView

@property (weak, nonatomic) id<QZYearMonthPickerViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame type:(QZYearMonthStyleType)type;

/**
 显示PickerView
 */
- (void)show;

/**
 移除PickerView
 */
- (void)remove;

@end

NS_ASSUME_NONNULL_END
