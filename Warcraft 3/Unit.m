//
//  Unit.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Unit.h"

@implementation Unit

-(void)damage:(int) damageAmount{
    self.healthPoints = self.healthPoints - damageAmount; // only use underscore when in an initializer or writing over a setter and getter
    self.attackPower = self.attackPower;
}

-(instancetype)initWithHP:(int)hp AP:(int)ap {
    self = [super init];
    
    if (self) {
        self.healthPoints = hp;
        self.attackPower = ap;
    }
    
    return self;
}

- (void)attack:(Unit *)enemy{
    [enemy damage:self.attackPower];
}


@end
