//
//  FoodCell.m
//  MenuSelection
//
//  Created by Obiet Panggrahito on 23/03/2017.
//  Copyright © 2017 Obiet Panggrahito. All rights reserved.
//

#import "FoodCell.h"

@implementation FoodCell


//2
-(void) awakeFromNib {
    
    [super awakeFromNib];
    
    UITapGestureRecognizer *tapGesture1 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    [self.imageView1 addGestureRecognizer:tapGesture1];
    
    UITapGestureRecognizer *tapGesture2 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    [self.imageView2 addGestureRecognizer:tapGesture2];
    
    UITapGestureRecognizer *tapGesture3 =
    [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imageTapped:)];
    [self.imageView3 addGestureRecognizer:tapGesture3];
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

}

//12 casting
-(void) imageTapped : (UIGestureRecognizer *)sender {
    
    UIImageView *tappedView = (UIImageView *)sender.view;
    UIImage *tappedImage = tappedView.image;
    
    if (self.delegate) {
        
        [self.delegate didSelectFoodImage:tappedImage];
        
    }
    
}

@end
