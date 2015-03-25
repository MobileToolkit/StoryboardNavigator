//
//  SNVPresentModallyStoryboardSegue.m
//  StoryboardNavigator
//
//  Created by Sebastian Owodziń on 20/03/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import "SNVPresentModallyStoryboardSegue.h"

#import "UIStoryboardSegue+StoryboardNavigator.h"

@implementation SNVPresentModallyStoryboardSegue

- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination
{
    return [super initWithIdentifier:identifier source:source destination:[self destinationScene:identifier]];
}

- (void)perform
{
    UIViewController *source = (UIViewController *)self.sourceViewController;
    [source presentViewController:self.destinationViewController animated:YES completion:nil];
}

@end
