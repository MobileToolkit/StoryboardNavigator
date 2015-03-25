//
//  UIStoryboardSegue+StoryboardNavigator.h
//  StoryboardNavigator
//
//  Created by Sebastian Owodziń on 20/03/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIStoryboardSegue (StoryboardNavigator)

- (UIViewController *)destinationScene:(NSString *)compoundIdentifier;

@end
