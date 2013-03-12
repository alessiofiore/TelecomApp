//
//  BIDDetailViewController.m
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import "BIDDetailViewController.h"

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
	// Do any additional setup after loading the view.
    
//    NSInteger *indexPath = ((NSIndexPath *) self.selection[@"indexPath"]).item;
    
    
    
    NSIndexPath *indexPath = ((NSIndexPath *) self.selection[@"indexPath"]);
    NSInteger i = indexPath.item;
    
    self.textView.text = [NSString stringWithFormat:@"%ld", (long)i];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_textView release];
    [super dealloc];
}
@end