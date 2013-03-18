//
//  Database.h
//  TelecomApp
//
//  Created by Alessio Fiore on 18/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Database : NSObject {
    NSString *docsDir;
    NSArray *dirPaths;
}


+ (Database *) getInstance;
-(void) hello;

@end
