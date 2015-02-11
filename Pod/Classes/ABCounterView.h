//
//  ABCounterView.h
//
//  Created by Alan Bouzek on 12/18/14.
//  Copyright (c) 2014 Alan Bouzek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ABCounterViewController.h"

@protocol ABCounterViewDelegate;


@interface ABCounterView : UIView <ABCounterViewControllerDelegate>

@property (weak, nonatomic) id<ABCounterViewDelegate> delegate;

-(void)setupWithStartCount:(float)startCount
      numberTextAttributes:(NSDictionary *)numberTextAttributes
      buttonTextAttributes:(NSDictionary *)buttonTextAttributes;

@end


@protocol ABCounterViewDelegate <NSObject>

-(void)counterViewDidIncrement:(ABCounterView *)counterView;
-(void)counterViewDidDecrement:(ABCounterView *)counterView;

@end