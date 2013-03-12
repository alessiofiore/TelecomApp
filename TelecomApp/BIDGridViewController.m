//
//  BIDGridViewController.m
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import "BIDGridViewController.h"
#import "BIDDetailViewController.h"

@interface BIDGridViewController ()

@end

@implementation BIDGridViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 15;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellName = @"";
    NSMutableAttributedString *labelText;
    
    if (indexPath.item == 0) {
        cellName = @"myFavoriteCell";
        labelText = [[NSMutableAttributedString alloc] initWithString:@"Favorites"];
    } else {
        cellName = @"myCell";
        labelText = [[NSMutableAttributedString alloc] initWithString:@"News"];
    }
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellName forIndexPath:indexPath];
    
    UIImageView *imgView = (UIImageView *) [cell viewWithTag:1];
    //    NSData *receivedData = [NSData dataWithContentsOfURL:[NSURL URLWithString:data.imageLink]];
    UIImage *image = [UIImage imageNamed:@"person.png"];
    imgView.image = image;
    
    UILabel *cellLabel = (UILabel *)[cell viewWithTag:2];
    cellLabel.attributedText = labelText;

    
    return cell;
}

#pragma mark - UICollectionViewDelegate
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    // TODO: Select Item;
}

- (void)collectionView:(UICollectionView *)collectionView didDeselectItemAtIndexPath:(NSIndexPath *)indexPath {
    // TODO: Deselect item
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    UIViewController *destination = segue.destinationViewController;
    
    
    
        // prepare selection info
        NSIndexPath *indexPath = [self.collectionView indexPathForCell:sender];
        NSDictionary *selection = @{@"indexPath" : indexPath};
        [destination setValue:selection forKey:@"selection"];
    
}

@end
