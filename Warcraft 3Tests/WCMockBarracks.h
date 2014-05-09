//
//  WCMockBarracks.h
//  Warcraft 3
//
//  Created by Geoff on 2014-05-09.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Barracks.h"

@class Footman, Peasent;

@interface WCMockBarracks : Barracks

- (BOOL)canTrainFootman;
- (Footman *)trainFootman;
- (BOOL)canTrainPeasant;
- (Peasent *)trainPeasant;
@property (nonatomic) int food;
@property (nonatomic) int gold;

@end
