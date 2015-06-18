//
//  PhotosCollectionViewClassCollectionViewCell.m
//  Day 4 Photo Bombers App
//
//  Created by Daniyar Mukhanov on 6/18/15.
//  Copyright (c) 2015 Daniyar Mukhanov. All rights reserved.
//

#import "PhotosCollectionViewClassCollectionViewCell.h"

@implementation PhotosCollectionViewClassCollectionViewCell

-(instancetype)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    if(self){
        self.imageView=[UIImageView new];
        [self.contentView addSubview:self.imageView];
    }
    return self;
}
-(void) layoutSubviews{
    [super layoutSubviews];
    self.imageView.frame=self.contentView.bounds;
    
}

@end
