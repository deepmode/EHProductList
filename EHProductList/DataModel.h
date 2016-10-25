//
//  DataModel.h
//  EHProductList
//
//  Created by Eric Ho on 25/10/2016.
//  Copyright © 2016 Eric Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *details;
@property (nonatomic,strong) NSArray *colorOptions; /* array of UIColor */

//- (instancetype) init;
- (instancetype) initWithName:(NSString *) name detail:(NSString *) details colorOptions: (NSArray *) colorOptions;
- (NSString *)description;

@end
