//
//  DataModel.m
//  EHProductList
//
//  Created by Eric Ho on 25/10/2016.
//  Copyright © 2016 Eric Ho. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//    }
//    return self;
//}

- (instancetype) initWithName:(NSString *) name detail:(NSString *) details colorOptions: (NSArray *) colorOptions {
    self = [super init];
    if (self) {
        self.name = name;
        self.details = details;
        self.colorOptions = colorOptions;
    }
    return self;
}

- (NSString *) description {
    return [NSString stringWithFormat:@"%@ -> %@", self.name, self.details];
}

@end
