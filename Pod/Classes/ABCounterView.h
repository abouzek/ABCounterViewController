//
//  ABCounterView.h
//
//  Created by Alan Bouzek on 12/18/14.
//  Copyright (c) 2014 Alan Bouzek. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ABCounterViewDelegate;


@interface ABCounterView : UIView

-(void)setupWithDelegate:(id<ABCounterViewDelegate>)delegate
              startCount:(float)startCount
    numberTextAttributes:(NSDictionary *)numberTextAttributes
    buttonTextAttributes:(NSDictionary *)buttonTextAttributes;
-(void)displayCount:(float)count;

@end


@protocol ABCounterViewDelegate <NSObject>

-(void)counterViewDidIncrement:(ABCounterView *)counterView;
-(void)counterViewDidDecrement:(ABCounterView *)counterView;

@end