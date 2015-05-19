//
//  ABCounterView.m
//
//  Created by Alan Bouzek on 12/18/14.
//  Copyright (c) 2014 Alan Bouzek. All rights reserved.
//

#import "ABCounterView.h"

@interface ABCounterView ()

@property (weak, nonatomic) id<ABCounterViewDelegate> delegate;

@property (strong, nonatomic) IBOutlet UILabel *numberLabel;
@property (strong, nonatomic) IBOutlet UIButton *plusButton;
@property (strong, nonatomic) IBOutlet UIButton *minusButton;

@end


@implementation ABCounterView

-(void)awakeFromNib {
    self.numberLabel.text = nil;
}

-(void)setupWithDelegate:(id<ABCounterViewDelegate>)delegate
              startCount:(float)startCount
    numberTextAttributes:(NSDictionary *)numberTextAttributes
    buttonTextAttributes:(NSDictionary *)buttonTextAttributes {
    self.delegate = delegate;
    NSString *countString = [NSString stringWithFormat:@"%@", @(startCount)];
    self.numberLabel.attributedText = [[NSAttributedString alloc] initWithString:countString
                                                                      attributes:numberTextAttributes];
    self.plusButton.titleLabel.attributedText = [[NSAttributedString alloc] initWithString:self.plusButton.titleLabel.text
                                                                                attributes:buttonTextAttributes];
    self.minusButton.titleLabel.attributedText = [[NSAttributedString alloc] initWithString:self.minusButton.titleLabel.text
                                                                                 attributes:buttonTextAttributes];
    if (buttonTextAttributes[NSForegroundColorAttributeName]) {
        UIColor *buttonTextColor = buttonTextAttributes[NSForegroundColorAttributeName];
        [self.plusButton setTitleColor:buttonTextColor forState:UIControlStateNormal];
        [self.minusButton setTitleColor:buttonTextColor forState:UIControlStateNormal];
    }
}

-(void)displayCount:(float)count {
    NSString *countString = [NSString stringWithFormat:@"%@", @(count)];
    NSDictionary *textAttributes = [self.numberLabel.attributedText attributesAtIndex:0
                                                                       effectiveRange:NULL];
    self.numberLabel.attributedText = [[NSAttributedString alloc] initWithString:countString
                                                                      attributes:textAttributes];
}


#pragma mark - IBAction methods

- (IBAction)plusButtonPressed:(UIButton *)sender {
    [self.delegate counterViewDidIncrement:self];
}

- (IBAction)minusButtonPressed:(UIButton *)sender {
    [self.delegate counterViewDidDecrement:self];
}


@end
