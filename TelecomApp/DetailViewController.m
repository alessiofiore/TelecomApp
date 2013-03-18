//
//  BIDDetailViewController.m
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import "DetailViewController.h"
#import "Item.h"

@interface DetailViewController ()

@end

@implementation DetailViewController {
    NSMutableData *receivedData;
    long totalFileSize;
    NSUInteger receivedDataBytes;
}


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
    
    // initialize the view with item's contents
    Item *item = ((Item *) self.selection[@"object"]);
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
    [_progressView release];
    [_downloadSubview release];
    [_downloadLabel release];
    
    [_filePath release];
    [super dealloc];
}



- (IBAction)viewItemAction:(id)sender {
    
    self.progressView.progress = 0.0;
    self.downloadSubview.hidden = false;
    
    NSString *url = @"http://localhost/Entropy.pkg";
    
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:url]
                                              cachePolicy:NSURLRequestUseProtocolCachePolicy
                                          timeoutInterval:60.0];
    
    // create the connection with the request and start loading the data
    NSURLConnection *connection=[[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
    if (connection) {
        
        // Get the file name
        NSArray *parts = [url componentsSeparatedByString:@"/"];
        NSString *filename = [parts objectAtIndex:[parts count]-1];
        NSLog(@"Filename: %@", filename);
        
        // Check if the directory already exists
        NSString *path = [NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES) lastObject];
        if (![[NSFileManager defaultManager] fileExistsAtPath:path]) {
            // Directory does not exist so create it
            [[NSFileManager defaultManager] createDirectoryAtPath:path withIntermediateDirectories:NO attributes:nil error:nil];
        }
        
        self.filePath = [NSString stringWithFormat: @"%@/%@", path, filename];        
        
        //        receivedData = [[NSMutableData data] retain];
        //        if(receivedData) {
        //
        //        }
    } else {
        // Inform the user that the connection failed.
    }
}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    totalFileSize = response.expectedContentLength;
    receivedData = [[NSMutableData alloc] init];
}

// Method periodically called during the download
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    receivedDataBytes += [data length];
    self.progressView.progress = receivedDataBytes / (float) totalFileSize;
    
    // Append the new data to receivedData.
    [receivedData appendData:data];
}

// Method called if an error is encountered during the download
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    [connection release];
    [receivedData release];
    
    // inform the user
    NSLog(@"Connection failed! Error - %@ %@",
          [error localizedDescription],
          [[error userInfo] objectForKey:NSURLErrorFailingURLStringErrorKey]);
}

// Method called if the connection succeeds in downloading the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    // Update download view
    self.progressView.progress = 1.0;
    self.downloadLabel.text = @"Complete";
    self.downloadSubview.hidden = true;
    
    NSLog(@"Succeeded! Received %d bytes of data",[receivedData length]);

    NSLog(@"Filepath: %@", self.filePath);
    
    // write received data on file
    
    
    [receivedData writeToFile:self.filePath atomically:YES];
       
    [connection release];
    [receivedData release];
}

@end
