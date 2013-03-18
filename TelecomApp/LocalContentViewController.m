//
//  LocalContentViewController.m
//  TelecomApp
//
//  Created by Alessio Fiore on 18/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import "LocalContentViewController.h"
#import "Database.h"

@interface LocalContentViewController ()

@end

@implementation LocalContentViewController

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
    
    Database *database = [Database getInstance];
    [database hello];
    
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
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellName = @"itemCell";
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellName forIndexPath:indexPath];
    
//    UIImageView *imgView = (UIImageView *) [cell viewWithTag:1];
//    
//    NSString *urlImage = [items[indexPath.item] urlImage];
//    UIImage *image = [UIImage imageNamed:urlImage];
//    imgView.image = image;
//    
//    UILabel *cellLabel = (UILabel *)[cell viewWithTag:2];
//    cellLabel.attributedText = labelText;
    
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

@end
