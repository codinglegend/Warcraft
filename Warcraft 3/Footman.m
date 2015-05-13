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
        _healthPoints = 60;
        _attackPower = 10;
    }
    return self;
}

// initiating a class. which you only do once...so all the statements within it

@end
