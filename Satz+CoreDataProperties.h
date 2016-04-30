//
//  Satz+CoreDataProperties.h
//  Pump4
//
//  Created by Marcel Spindler on 30.04.16.
//  Copyright © 2016 Marcel Spindler. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Satz.h"

NS_ASSUME_NONNULL_BEGIN

@interface Satz (CoreDataProperties)

@property (nullable, nonatomic, retain) NSNumber *rpe;
@property (nullable, nonatomic, retain) NSNumber *wiederholungen;
@property (nullable, nonatomic, retain) NSNumber *ausgewaehlt;
@property (nullable, nonatomic, retain) NSManagedObject *uebung;

@end

NS_ASSUME_NONNULL_END
