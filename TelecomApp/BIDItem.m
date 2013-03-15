//
//  BIDItem.m
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import "BIDItem.h"

@implementation BIDItem

@synthesize title;
@synthesize description;
@synthesize status;
@synthesize timestamp;
@synthesize urlImage;
@synthesize urlContent;

- (void) dealloc
{
    [title release];
    [description release];
    [status release];
    [timestamp release];    
    [urlImage release];
    [urlContent release];
    [super dealloc];
}

@end
