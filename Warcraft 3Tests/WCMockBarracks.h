//
//  WCMockBarracks.h
//  Warcraft 3
//
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Barracks.h"

@class Footman, Peasant;

@interface WCMockBarracks : Barracks

- (BOOL)canTrainFootman;
- (Footman *)trainFootman;
- (BOOL)canTrainPeasant;
- (Peasant *)trainPeasant;
@property (nonatomic) int food;
@property (nonatomic) int gold;

@end
