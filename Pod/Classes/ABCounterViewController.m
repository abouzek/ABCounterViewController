//
//  ABCounterViewController.m
//
//  Created by Alan Bouzek on 12/19/14.
//  Copyright (c) 2014 Alan Bouzek. All rights reserved.
//

#import "ABCounterViewController.h"
#import "ABCounterView.h"

@interface ABCounterViewController () <ABCounterViewDelegate>

@property (nonatomic) float minCount, count, maxCount, stepInterval;
@property (strong, nonatomic) NSDictionary *numberTextAttributes, *buttonTextAttributes;

@property (weak, nonatomic) id<ABCounterViewControllerDelegate> delegate;

@property (strong, nonatomic) IBOutlet ABCounterView *counterView;

@end


@implementation ABCounterViewController

-(instancetype)initWithDelegate:(id<ABCounterViewControllerDelegate>)delegate
                     startCount:(float)startCount
                       minCount:(float)minCount
                       maxCount:(float)maxCount
                   stepInterval:(float)stepInterval
           numberTextAttributes:(NSDictionary *)numberTextAttributes
           buttonTextAttributes:(NSDictionary *)buttonTextAttributes {
    if (self = [super initWithNibName:NSStringFromClass([self class])
                               bundle:[NSBundle mainBundle]]) {
        self.delegate = delegate;
        self.count = startCount;
        self.minCount = minCount;
        self.maxCount = maxCount;
        self.stepInterval = stepInterval;
        self.numberTextAttributes = numberTextAttributes;
        self.buttonTextAttributes = buttonTextAttributes;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.counterView setupWithDelegate:self
                             startCount:self.count
                   numberTextAttributes:self.numberTextAttributes
                   buttonTextAttributes:self.buttonTextAttributes];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - setter methods

-(void)setCount:(float)count {
    _count = count;
    [self.delegate counterViewController:self
                        didUpdateToCount:count];
    [self.counterView displayCount:count];
}


#pragma mark - AVCounterViewDelegate methods

-(void)counterViewDidIncrement:(ABCounterView *)counterView {
    if ((self.count + self.stepInterval) < self.maxCount) {
        self.count += self.stepInterval;
    }
}

-(void)counterViewDidDecrement:(ABCounterView *)counterView {
    if ((self.count - self.stepInterval) > self.minCount) {
        self.count -= self.stepInterval;
    }
}

@end
