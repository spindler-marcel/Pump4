//
//  Trainingsplan+CoreDataProperties.h
//  Pump4
//
//  Created by Marcel Spindler on 30.04.16.
//  Copyright © 2016 Marcel Spindler. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Trainingsplan.h"

NS_ASSUME_NONNULL_BEGIN

@interface Trainingsplan (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *ausgewaehlt;
@property (nullable, nonatomic, retain) NSManagedObject *session;
@property (nullable, nonatomic, retain) NSSet<NSManagedObject *> *uebungen;

@end

@interface Trainingsplan (CoreDataGeneratedAccessors)

- (void)addUebungenObject:(NSManagedObject *)value;
- (void)removeUebungenObject:(NSManagedObject *)value;
- (void)addUebungen:(NSSet<NSManagedObject *> *)values;
- (void)removeUebungen:(NSSet<NSManagedObject *> *)values;

@end

NS_ASSUME_NONNULL_END
