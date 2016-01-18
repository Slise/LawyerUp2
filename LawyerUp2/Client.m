//
//  Client.m
//  LawyerUp2
//
//  Created by Benson Huynh on 2016-01-17.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "Client.h"

@implementation Client

-(instancetype)initWithName: (NSString *) name descriptionOfProblem: (NSString *) descriptionOfProblem specialtyType: (TypesOfPractices *) specialtyType {
    self = [super init];
    if (self) {
        _name = name;
        _descriptionOfProblem = descriptionOfProblem;
        _specialtyType = specialtyType;
    }
    return self;
}

@end
