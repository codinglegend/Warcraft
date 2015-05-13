//
//  Barracks.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Barracks.h"


@implementation Barracks

- (instancetype)init
{
    self = [super init];
    if (self) {
        _gold = 1000; // only use underscore when you're in the highest new class (in this case, Barracks inherits directly from NSObject. the first one to implement it can use the underscore. this is the instance variable (in contrast with the instance of an object). 
        _food = 80;
    }
    return self;
}

-(Footman*)trainFootman{
    self.gold = self.gold - 135; // could use -=
    self.food = self.food -2;
    return [[Footman alloc]init];
}

@end
