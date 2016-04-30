//
//  Uebung+CoreDataProperties.h
//  Pump4
//
//  Created by Marcel Spindler on 30.04.16.
//  Copyright © 2016 Marcel Spindler. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

#import "Uebung.h"

NS_ASSUME_NONNULL_BEGIN

@interface Uebung (CoreDataProperties)

@property (nullable, nonatomic, retain) NSString *muskel;
@property (nullable, nonatomic, retain) NSString *name;
@property (nullable, nonatomic, retain) NSNumber *ausgewaehlt;
@property (nullable, nonatomic, retain) Trainingsplan *trainingsplan;
@property (nullable, nonatomic, retain) NSSet<Satz *> *saetze;

@end

@interface Uebung (CoreDataGeneratedAccessors)

- (void)addSaetzeObject:(Satz *)value;
- (void)removeSaetzeObject:(Satz *)value;
- (void)addSaetze:(NSSet<Satz *> *)values;
- (void)removeSaetze:(NSSet<Satz *> *)values;

@end

NS_ASSUME_NONNULL_END
