//
//  ABViewController.m
//  ABCounterViewController
//
//  Created by abouzek on 02/11/2015.
//  Copyright (c) 2014 abouzek. All rights reserved.
//

#import "ABViewController.h"
#import <ABCounterViewController/ABCounterViewController.h>

@interface ABViewController ()

@end


@implementation ABViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    NSDictionary *numberTextAttributes = @{NSForegroundColorAttributeName:[UIColor blackColor],
                                           NSFontAttributeName:[UIFont fontWithName:@"AvenirNext-DemiBold" size:50]};
    NSDictionary *buttonTextAttributes = @{NSForegroundColorAttributeName:[UIColor blackColor],
                                           NSFontAttributeName:[UIFont fontWithName:@"AvenirNext-Regular" size:45]};
    ABCounterViewController *counterViewController = [[ABCounterViewController alloc] initWithStartCount:1
                                                                                                minCount:1
                                                                                                maxCount:10
                                                                                            stepInterval:0.5
                                                                                    numberTextAttributes:numberTextAttributes
                                                                                    buttonTextAttributes:buttonTextAttributes];
    [self addChildViewController:counterViewController];
    [self.view addSubview:counterViewController.view];
    
    CGSize size = self.view.frame.size;
    CGFloat counterWidth = size.width / 1.5;
    CGFloat counterHeight = counterWidth / 2;
    counterViewController.view.frame = CGRectMake(0, 0, counterWidth, counterHeight);
    counterViewController.view.center = self.view.center;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
