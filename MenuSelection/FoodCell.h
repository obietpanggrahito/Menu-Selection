//
//  FoodCell.h
//  MenuSelection
//
//  Created by Obiet Panggrahito on 23/03/2017.
//  Copyright © 2017 Obiet Panggrahito. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"

//10
@protocol FoodCellDelegate <NSObject>
-(void)didSelectFoodImage:(UIImage *)Image;
@end


@interface FoodCell : UITableViewCell
//1
@property (weak, nonatomic) IBOutlet UIImageView *imageView1;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIImageView *imageView3;


//11
@property (weak, nonatomic) id<FoodCellDelegate> delegate;


@end
