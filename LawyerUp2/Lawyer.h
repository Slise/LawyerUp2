//
//  Lawyer.h
//  LawyerUp2
//
//  Created by Benson Huynh on 2016-01-17.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
#import "Client.h"
#import "AssociateDelegate.h"

@interface Lawyer : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) TypesOfPractices specialties;
@property (nonatomic, strong) NSNumber *lawyerRates;
@property (nonatomic, strong) NSMutableArray *clientList;
@property (nonatomic, weak) id<AssociateDelegate> delegate;


-(instancetype)initWithName: (NSString *)name specialties:(TypesOfPractices)specialties practice:(Practice*)practice;
-(void)addClient:(Client*)client;
-(int)getPayableAmountForClient:(Client*)client;

@end
