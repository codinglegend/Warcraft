//
//  WCMockBarracks.m
//  Warcraft 3
//
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "WCMockBarracks.h"

@implementation WCMockBarracks


- (BOOL)canTrainFootman{
    if (self.food<2){ //self refers to a specific instance of the object,                               usually the one you are calling upon
        return NO;
    }else if (self.gold < 135){
        return NO;
    }
    return YES; //return jumps out of function
}

- (Footman *)trainFootman{
    if ([self canTrainFootman] == YES){
        return [Footman new];
    }
    return nil;
}



/* another way to have done it using OR:
 
if (self.food<2 || self.gold < 135){
    return NO;
}
return YES; //return jumps out of function */

@end
