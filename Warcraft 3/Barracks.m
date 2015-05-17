//
//  Barracks.m
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Barracks.h"
#import "Footman.h"


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


- (Footman*)trainFootman{
    
    Footman *footman = nil; //making nil the default
    
    if ((self.gold >= 135) && (self.food >= 2)){
        self.gold = self.gold - 135; // could use -=
        self.food = self.food - 2;
        footman = [[Footman alloc] init];
    }
    return footman; // method needs this return? 
}

// HOW I HAD IT DONE INITIALLY
// - (Footman*)trainFootman{
//    if ((self.gold < 135) && (self.food < 2)){
//    return nil; // return allows you to jump outside the function, that is why you don't need else
//    }
//    self.gold = self.gold - 135; // could use -=
//    self.food = self.food - 2;
//    
//    return [[Footman alloc] init];
//    }
//}




// COULD HAVE INCLUDED THE canTrainFootman FUNCTION SINCE IT ALREADY MADE THE CHECK
//- (Footman*)trainFootman{
//    if (canTrainFootman == YES){
//    self.gold = self.gold - 135; // could use -=
//    self.food = self.food - 2;
//    return [[Footman alloc] init];
//    }else{
//    return nil;
//    }
//}


- (BOOL)canTrainFootman{
    if (self.food<2){ //self refers to a specific instance of the object,                               usually the one you are calling upon
        return NO;
    }else if (self.gold < 135){
        return NO;
    }
    return YES; //return jumps out of function
}

@end

