//
//  ViewController.m
//  MenuSelection
//
//  Created by Obiet Panggrahito on 23/03/2017.
//  Copyright © 2017 Obiet Panggrahito. All rights reserved.
//

#import "ViewController.h"
#import "FoodCell.h"
//H
#import "DrinkCell.h"
                                                                        //14     J
@interface ViewController () <UITableViewDelegate, UITableViewDataSource, FoodCellDelegate, DrinkCellDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *foodImage;
@property (weak, nonatomic) IBOutlet UIImageView *drinkImage;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    
    
    [super viewDidLoad];
    [self prepareTableView];
    
}

-(void) prepareTableView {
    
}

#pragma mark -UITableView Datasource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 2;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    if ((indexPath.row%2) == 0) {
    
    FoodCell *cell = (FoodCell *) [tableView dequeueReusableCellWithIdentifier:@"foodCell" forIndexPath:indexPath];
        
        //13
        cell.delegate = self;
        return cell;
    }
    
    
    //E
    else {
    DrinkCell *cell = (DrinkCell *) [tableView dequeueReusableCellWithIdentifier:@"DrinkCell" forIndexPath:indexPath];

        cell.delegate1 = self;
        return cell;
    }

}

//15
-(void) didSelectFoodImage:(UIImage *)Image {
    
    self.foodImage.image = Image;
    
}

// K
-(void) didSelectDrinkImage:(UIImage *)Image {
    
    self.drinkImage.image = Image;
    
}


@end
