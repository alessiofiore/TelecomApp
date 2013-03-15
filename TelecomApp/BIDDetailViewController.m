//
//  BIDDetailViewController.m
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import "BIDDetailViewController.h"
#import "BIDItem.h"


@interface BIDDetailViewController ()

@end

@implementation BIDDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    BIDItem *item = ((BIDItem *) self.selection[@"object"]);
    self.titleLabel.text = [item title];
    self.descriptionTextView.text = [item description];
    self.timestampLabel.text = [item timestamp];
    
    UIImage *image = [UIImage imageNamed:[item urlImage]];
    self.imageView.image = image;   
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)dealloc {
    [_imageView release];
    [_timestampLabel release];
    [_titleLabel release];
    [_viewButton release];
    [_deleteButton release];
    [_descriptionTextView release];
    [super dealloc];
}
@end
