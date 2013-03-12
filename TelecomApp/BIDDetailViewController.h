//
//  BIDDetailViewController.h
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDDetailViewController : UIViewController

@property (retain, nonatomic) IBOutlet UITextView *textView;
@property (copy, nonatomic) NSDictionary *selection;

@end
