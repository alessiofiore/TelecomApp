//
//  BIDItem.m
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import "BIDItem.h"

@implementation BIDItem

-(int) itemId {
    return itemId;
};

-(NSString*) title {
    return title;
};

-(NSString*) body {
    return body;
};


-(NSString*) pictureUrl {
    return pictureUrl;
}

-(NSString*) url {
    return url;
};


-(void) setItemId: (int) i {
    itemId = i;
};

-(void) setTitle: (NSString*) t {
   title = t;
};

-(void) setBody: (NSString*) b {
    body = b;
};


-(void) setPictureUrl: (NSString*) picture {
    pictureUrl = picture;
}

-(void) setUrl: (NSString*) u {
    url = u;
};

@end
