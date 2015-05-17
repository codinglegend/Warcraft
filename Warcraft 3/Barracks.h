//
//  Barracks.h
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Footman;

@interface Barracks : NSObject
@property (nonatomic) int gold;
@property (nonatomic) int food;

-(Footman*)trainFootman;
-(BOOL)canTrainFootman;


@end
