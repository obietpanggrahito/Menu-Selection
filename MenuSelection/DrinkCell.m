//
//  DrinkCell.m
//  MenuSelection
//
//  Created by Obiet Panggrahito on 23/03/2017.
//  Copyright © 2017 Obiet Panggrahito. All rights reserved.
//

#import "DrinkCell.h"

@implementation DrinkCell

- (void)awakeFromNib {
    //B
    [super awakeFromNib];
    [self.button1 addTarget:self action:@selector(actionButton1:) forControlEvents:UIControlEventTouchUpInside];
    [self.button2 addTarget:self action:@selector(actionButton2:) forControlEvents:UIControlEventTouchUpInside];
    [self.button3 addTarget:self action:@selector(actionButton3:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//C , D
- (IBAction)actionButton1:(id)sender {
    
    UIImage *showImage = self.button1.currentBackgroundImage;
    
    if (self.delegate1) {
        
        [self.delegate1 didSelectDrinkImage:showImage];
    
}
}

- (IBAction)actionButton2:(id)sender {
    
    UIImage *showImage = self.button2.currentBackgroundImage;
    
    if (self.delegate1) {
        
        [self.delegate1 didSelectDrinkImage:showImage];
    
}
}

- (IBAction)actionButton3:(id)sender {
    
    UIImage *showImage = self.button3.currentBackgroundImage;
    
    if (self.delegate1) {
        
        [self.delegate1 didSelectDrinkImage:showImage];
    
}
}

@end
