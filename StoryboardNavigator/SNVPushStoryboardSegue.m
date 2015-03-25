//
//  SNVPushStoryboardSegue.m
//  StoryboardNavigator
//
//  Created by Sebastian Owodziń on 20/03/2015.
//  Copyright (c) 2015 mobiletoolkit.org. All rights reserved.
//

#import "SNVPushStoryboardSegue.h"

#import "UIStoryboardSegue+StoryboardNavigator.h"

@implementation SNVPushStoryboardSegue

- (id)initWithIdentifier:(NSString *)identifier source:(UIViewController *)source destination:(UIViewController *)destination
{
    return [super initWithIdentifier:identifier source:source destination:[self destinationScene:identifier]];
}

- (void)perform
{
    UIViewController *source = (UIViewController *)self.sourceViewController;
    [source.navigationController pushViewController:self.destinationViewController animated:YES];
}

@end
