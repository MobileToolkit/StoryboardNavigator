//
//  UIStoryboardSegue+StoryboardNavigator.m
//  StoryboardNavigator
//
//  Created by Sebastian Owodziń on 20/03/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import "UIStoryboardSegue+StoryboardNavigator.h"

@implementation UIStoryboardSegue (StoryboardNavigator)

- (UIViewController *)destinationScene:(NSString *)compoundIdentifier {
    NSArray *compoundIdentifierArray = [compoundIdentifier componentsSeparatedByString:@"@"];
    
    NSString *storyboardName = compoundIdentifierArray.lastObject;
    
    NSString *viewControllerIdentifier = [storyboardName isEqualToString:compoundIdentifierArray.firstObject] ? nil : compoundIdentifierArray.firstObject;
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle:nil];
    
    return nil == viewControllerIdentifier ? [storyboard instantiateInitialViewController] : [storyboard instantiateViewControllerWithIdentifier:viewControllerIdentifier];
}

@end
