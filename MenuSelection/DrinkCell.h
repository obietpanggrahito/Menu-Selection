//
//  DrinkCell.h
//  MenuSelection
//
//  Created by Obiet Panggrahito on 23/03/2017.
//  Copyright © 2017 Obiet Panggrahito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

//F
@protocol DrinkCellDelegate <NSObject>
-(void)didSelectDrinkImage:(UIImage *)Image;

@end

@interface DrinkCell : UITableViewCell
//A
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;

//G
@property (weak, nonatomic) id<DrinkCellDelegate> delegate1;

@end
