//
//  MotorRacingViewController.m
//  FunMoments
//
//  Created by ilabadmin on 7/29/16.
//  Copyright © 2016 Strathmore. All rights reserved.
//

#import "MotorRacingViewController.h"

@interface MotorRacingViewController ()
{
    NSArray *motorPhotos;
}

@end

@implementation MotorRacingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    motorPhotos = [NSArray arrayWithObjects:@"racing.jpg", @"racing1.jpg", @"racing2.jpg",@"racing3.jpg",@"racing4.jpg",@"racing5.jpg",@"racing6.jpg", nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger) collectionView: (UICollectionView *) collectionView numberOfItemsInSection:(NSInteger)section
{
    return motorPhotos.count;
}

-(UICollectionViewCell *) collectionView: (UICollectionView *) collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    
    static NSString *identifier = @"cell";
    UICollectionViewCell *cell = [collectionView
    dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    UIImageView *racingImageView = (UIImageView *) [cell viewWithTag:100];
    racingImageView.image = [UIImage imageNamed:[motorPhotos objectAtIndex:indexPath.row]];
    return cell;
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
