//
//  DataModel.h
//  EHProductList
//
//  Created by Eric Ho on 25/10/2016.
//  Copyright © 2016 Eric Ho. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DataModel;
@protocol DataModelDelegate <NSObject>
@required
-(void) dataModelDidSelected:(DataModel *) dataModel;
@end



@interface DataModel : NSObject
@property (nonatomic,strong) NSString *name;
@property (nonatomic,strong) NSString *details;
@property (nonatomic,strong) NSArray *colorOptions; /* array of UIColor */
@property (nonatomic,weak) id <DataModelDelegate> delegate ;


//- (instancetype) init;
- (instancetype) initWithName:(NSString *) name detail:(NSString *) details colorOptions: (NSArray *) colorOptions;
- (NSString *)description;
- (void) updateStatus:(BOOL) isOn;
- (BOOL) myStatus;
@end



