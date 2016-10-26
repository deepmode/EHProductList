//
//  DataModel.m
//  EHProductList
//
//  Created by Eric Ho on 25/10/2016.
//  Copyright © 2016 Eric Ho. All rights reserved.
//

#import "DataModel.h"

@interface DataModel()
@property (nonatomic) BOOL status;
@end

@implementation DataModel

//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//    }
//    return self;
//}

/*
- (instancetype)init {
    return Nil;
}
*/


- (instancetype) initWithName:(NSString *) name detail:(NSString *) details colorOptions: (NSArray *) colorOptions {
    self = [super init];
    if (self) {
        self.name = name;
        self.details = details;
        self.colorOptions = colorOptions;
        self.status = NO;
    }
    return self;
}

- (NSString *) description {
    return [NSString stringWithFormat:@"%@ -> %@", self.name, self.details];
}

- (void) updateStatus:(BOOL)isOn {
    self.status = isOn;
}

- (BOOL) myStatus {
    return self.status;
}

@end
