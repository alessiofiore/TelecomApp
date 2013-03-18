//
//  BIDDetailViewController.h
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (copy, nonatomic) NSDictionary *selection;
@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (retain, nonatomic) IBOutlet UILabel *timestampLabel;
@property (retain, nonatomic) IBOutlet UILabel *titleLabel;
@property (retain, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (retain, nonatomic) IBOutlet UIButton *viewButton;
@property (retain, nonatomic) IBOutlet UIButton *deleteButton;

@property (retain, nonatomic) IBOutlet UIView *downloadSubview;
@property (retain, nonatomic) IBOutlet UIProgressView *progressView;
@property (retain, nonatomic) IBOutlet UILabel *downloadLabel;

@property (retain) NSString *filePath;

- (IBAction)viewItemAction:(id)sender;

@end
