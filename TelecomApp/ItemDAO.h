//
//  ItemDAO.h
//  TelecomApp
//
//  Created by Alessio Fiore on 18/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"

@interface ItemDAO : NSObject

@property (strong, nonatomic) NSString *databasePath;
@property (nonatomic) sqlite3 *itemDB;

@end
