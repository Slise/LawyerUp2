//
//  Client.h
//  LawyerUp2
//
//  Created by Benson Huynh on 2016-01-17.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"

@interface Client : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *descriptionOfProblem;
@property (nonatomic, assign) TypesOfPractices *specialtyType;

-(instancetype)initWithName: (NSString *) name descriptionOfProblem: (NSString *) descriptionOfProblem specialtyType: (TypesOfPractices *) specialtyType;

@end
