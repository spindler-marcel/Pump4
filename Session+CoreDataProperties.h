//
//  Session+CoreDataProperties.h
//  Pump4
//
//  Created by Marcel Spindler on 30.04.16.
//  Copyright © 2016 Marcel Spindler. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Session.h"

NS_ASSUME_NONNULL_BEGIN

@interface Session (CoreDataProperties)

@property (nullable, nonatomic, retain) NSDate *datum;
@property (nullable, nonatomic, retain) NSNumber *dauer;
@property (nullable, nonatomic, retain) NSNumber *erledigt;
@property (nullable, nonatomic, retain) Trainingsplan *trainingsplan;

@end

NS_ASSUME_NONNULL_END
