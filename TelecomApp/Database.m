//
//  Database.m
//  TelecomApp
//
//  Created by Alessio Fiore on 18/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import "Database.h"

@implementation Database

static Database *instance;

+ (Database *) getInstance {
    if(instance == nil)
        instance = [[Database alloc] init];
    return instance;
}

-(id)init {
    self = [super init];
    if(self != nil) {
        
    }
    
    return self;
}

-(void) hello {
    NSLog("ciao");
}

@end
