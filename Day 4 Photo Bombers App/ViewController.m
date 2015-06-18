//
//  ViewController.m
//  Day 4 Photo Bombers App
//
//  Created by Daniyar Mukhanov on 6/18/15.
//  Copyright (c) 2015 Daniyar Mukhanov. All rights reserved.
//

#import "ViewController.h"
#import "PhotosCollectionViewClassCollectionViewCell.h" //jkjk
#import <SimpleAuth/SimpleAuth.h>

@interface ViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.collectionView.dataSource=self;
    self.collectionView.delegate=self;
    [self.collectionView registerClass:[PhotosCollectionViewClassCollectionViewCell class] forCellWithReuseIdentifier:@"Cell"];
    
    [SimpleAuth authorize:@"instagram" completion:^(id responseObject, NSError *error) {
        NSLog(@"%@", responseObject);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma marks - UICollectionView methods

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
-(NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
       return 10;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    //return cellview
    PhotosCollectionViewClassCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    cell.imageView.image=[UIImage imageNamed:@"barca.jpeg"];
    return cell;
    
}
@end
