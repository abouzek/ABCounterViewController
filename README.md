# ABCounterViewController

[![Version](https://img.shields.io/cocoapods/v/ABCounterViewController.svg?style=flat)](http://cocoadocs.org/docsets/ABCounterViewController)
[![License](https://img.shields.io/cocoapods/l/ABCounterViewController.svg?style=flat)](http://cocoadocs.org/docsets/ABCounterViewController)
[![Platform](https://img.shields.io/cocoapods/p/ABCounterViewController.svg?style=flat)](http://cocoadocs.org/docsets/ABCounterViewController)

## Description

A minimalistic counter control with increment and decrement functionality. It includes the ability to set a starting, maximum and minimum values as well as text attributes.

## Example

![alt tag](https://www.github.com/abouzek/ABCounterViewController/raw/master/example.gif)

## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

An instance of ABCounterViewController should be created using the designated initializer:
	
    -(instancetype) initWithDelegate:(id<ABCounterViewController)delegate
    			  startCount:(float)startCount
                            minCount:(float)minCount
                            maxCount:(float)maxCount
                        stepInterval:(float)stepInterval
                numberTextAttributes:(NSDictionary *)numberTextAttributes
                buttonTextAttributes:(NSDictionary *)buttonTextAttributes

* numberTextAttributes and buttonTextAttributes are standard text attribute NSDictionaries.
* startCount determines the starting number, minCount and maxCount determine the minimum and maximum numbers the counter can reach.
* stepInterval is the increment and decrement interval.

The delegate method:

	-(void) counterViewController:(ABCounterViewController *)counterViewController
		         didUpdateToCount:(float)count

will be called each time the count is updated.

The frame must be set manually after initialization and looks best when the width is at least double the height.

## Installation

ABCounterViewController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "ABCounterViewController"

## Author

abouzek, alan.bouzek@gmail.com

## License

ABCounterViewController is available under the MIT license. See the LICENSE file for more info.

