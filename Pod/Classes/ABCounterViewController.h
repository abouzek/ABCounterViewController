//
//  ABCounterViewController.h
//
//  Created by Alan Bouzek on 12/19/14.
//  Copyright (c) 2014 Alan Bouzek. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ABCounterViewControllerDelegate;


@interface ABCounterViewController : UIViewController

@property (weak, nonatomic) id<ABCounterViewControllerDelegate> delegate;

-(instancetype)initWithStartCount:(float)startCount
                         minCount:(float)minCount
                         maxCount:(float)maxCount
                     stepInterval:(float)stepInterval
             numberTextAttributes:(NSDictionary *)numberTextAttributes
             buttonTextAttributes:(NSDictionary *)buttonTextAttributes;
@end


@protocol ABCounterViewControllerDelegate <NSObject>

-(void)counterViewController:(ABCounterViewController *)counterViewController
            didUpdateToCount:(float)count;

@end
