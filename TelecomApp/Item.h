//
//  BIDItem.h
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject  {
    NSString* title;
    NSString* description;
    NSString* status;
    NSString* timestamp;
    NSString* urlImage;
    NSString* urlContent;
}

@property (retain) NSString* title;
@property (retain) NSString* description;
@property (retain) NSString* status;
@property (retain) NSString* timestamp;
@property (retain) NSString* urlImage;
@property (retain) NSString* urlContent;

@end
