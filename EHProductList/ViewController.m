//
//  ViewController.m
//  EHProductList
//
//  Created by Eric Ho on 25/10/2016.
//  Copyright © 2016 Eric Ho. All rights reserved.
//

#import "ViewController.h"
#import "DataModel.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) NSArray *dataSrc; /* array of DataModel */
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (NSArray *) colorList {

    //NSArray *color = @[[UIColor redColor], [UIColor greenColor], [UIColor yellowColor], [UIColor blueColor]];
    NSMutableSet *colorSet = [[NSMutableSet alloc] init];
    NSInteger maxColor = arc4random() % 10;
    
    for (NSUInteger i = 0; i<maxColor; i++) {
        CGFloat r = arc4random() % 255 / 255.0;
        CGFloat g = arc4random() % 255 / 255.0;
        CGFloat b = arc4random() % 255 / 255.0;
        UIColor *randomColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0];
        //NSUInteger index = arc4random() % color.count;
        //[colorSet addObject:color[index]];
        [colorSet addObject:randomColor];
    }
    return colorSet.allObjects;
}

- (NSArray *) dataSrc {
    if (!_dataSrc) {
        NSMutableArray *array = [[NSMutableArray alloc]init];
        for (int i = 0; i < 50; i++) {
            NSString *name = [NSString stringWithFormat:@"Name %d",i];
            NSString *details = [NSString stringWithFormat:@"Detail %d",i];
            NSArray *colorOptions = [self colorList];
            DataModel *obj = [[DataModel alloc] initWithName: name detail:details colorOptions:colorOptions];
            [array addObject:obj];
        }
        _dataSrc = array;
    }
    return _dataSrc;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSArray *temp = self.dataSrc;
    NSLog(@"dataSrc =  %@", temp);
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //add protocal
    //add KVO
    //add image fetching
    //add category 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSrc.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"Cell_Display"];
    cell.backgroundColor = [UIColor whiteColor];
    cell.textLabel.text = @"";
    cell.detailTextLabel.text = @"";
    
    DataModel *model = self.dataSrc[indexPath.row];
    cell.textLabel.text = model.name;
    cell.detailTextLabel.text = model.details;
    if (model.colorOptions.count > 0) {
        cell.backgroundColor = model.colorOptions[0];
    }
    return cell;
}

@end
