//
//  Footman.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Footman.h"

@implementation Footman

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.healthPoints = 60;
        //[self setHealthPoints:60];
        self.attackPower = 10;
    }
    return self;
}

// initiating a class. which you only do once...so all the statements within it

-(void)attack:(Unit*)enemy{
    [enemy damage:10];
}



@end
