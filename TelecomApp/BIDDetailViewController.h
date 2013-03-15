//
//  BIDDetailViewController.h
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDDetailViewController : UIViewController


@property (copy, nonatomic) NSDictionary *selection;
@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (retain, nonatomic) IBOutlet UILabel *timestampLabel;
@property (retain, nonatomic) IBOutlet UILabel *titleLabel;
@property (retain, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (retain, nonatomic) IBOutlet UIButton *viewButton;
@property (retain, nonatomic) IBOutlet UIButton *deleteButton;

@end
