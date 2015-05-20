//
//  Unit.h
//  WarCarftIII
//
//  Created by Aaron Dufall on 5/05/2014.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Unit : NSObject
@property (nonatomic) int healthPoints;
@property (assign) int attackPower;

-(void)damage:(int) damageAmount;
-(void)attack:(Unit *)enemy;

-(instancetype)initWithHP:(int)healthPoints AP:(int)attackPower;


@end
