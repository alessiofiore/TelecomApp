//
//  BIDGridViewController.m
//  TelecomApp
//
//  Created by Alessio Fiore on 12/03/13.
//  Copyright (c) 2013 Ericsson. All rights reserved.
//

#import "HomeViewController.h"
#import "DetailViewController.h"
#import "Item.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

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
    
    items = [[NSMutableArray alloc] init];
    
    Item *item = [[Item alloc] init];
    [item setTitle: @"Favorite!"];
    [item setDescription: @"Favorite items"];
    [item setTimestamp: @"2014/07/19 21:10:34"];
    [item setUrlImage: @"person.png"];
    [item setUrlContent: @"content.mp4"];
    [items addObject: item];

    item = [[Item alloc] init];
    [item setTitle: @"Compression is 20!"];
    [item setDescription: @"Ericsson celebrates 20 years of compression - a behind-the-scenes look."];
    [item setTimestamp: @"2014/07/19 21:10:34"];
    [item setUrlImage: @"person.png"];
    [item setUrlContent: @"content.mp4"];
    [items addObject: item];
    
    item = [[Item alloc] init];
    [item setTitle: @"Item 3"];
    [item setDescription: @"asdasdjkaskjdha sjhd akjshd ajkshd akjsd akjshd akjshd akjs dakjsd kajs kjahs dkjahs kjda skjda jskdha kjshd akjshd akjshd akjhsd akjsh dakjhs dkajhs dkajhs dakjshd akjshd akjshd akjshd akjshd akjsh akjshd akjd"];
    [item setTimestamp: @"2014/07/19 21:10:34"];
    [item setUrlImage: @"person.png"];
    [item setUrlContent: @"content.mp4"];
    [items addObject: item];
}

- (void)dealloc {
    [items release];
    [super dealloc];
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
    return [items count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *cellName = @"";
    NSMutableAttributedString *labelText;
    
    if (indexPath.item == 0) {
        cellName = @"favoriteCell";
        labelText = [[NSMutableAttributedString alloc] initWithString:@"Favorites"];
    } else {
        cellName = @"newsCell";
        labelText = [[NSMutableAttributedString alloc] initWithString:@"News"];
    }
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellName forIndexPath:indexPath];
    
    UIImageView *imgView = (UIImageView *) [cell viewWithTag:1];
    
//    NSLog(@"%d %@", indexPath.item, [items[indexPath.item] title]);
    
    NSString *urlImage = [items[indexPath.item] urlImage];
    UIImage *image = [UIImage imageNamed:urlImage];
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
    NSIndexPath *indexPath = [self.collectionView indexPathForCell:sender];
    
    // prepare data only for news (NOT for favorite item)
    if(indexPath.item != 0) {    
        Item *item = items[indexPath.item];
        
        // pass object to next view
        NSDictionary *selection = @{@"indexPath" : indexPath, @"object" : item};
        [destination setValue:selection forKey:@"selection"];
    }
}

@end
