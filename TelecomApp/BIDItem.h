//
//  BIDItem.h
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BIDItem : NSObject  {
    int itemId;
    NSString* title;
    NSString* body;
    NSString* pictureUrl;
    NSString* url;
}

- (int) itemId;
- (NSString*) title;
- (NSString*) body;
- (NSString*) pictureUrl;
- (NSString*) url;

- (void) setItemId: (int) itemId;
- (void) setTitle: (NSString*) title;
- (void) setBody: (NSString*) body;
- (void) setPictureUrl: (NSString*) picture;
- (void) setUrl: (NSString*) url;


@end
