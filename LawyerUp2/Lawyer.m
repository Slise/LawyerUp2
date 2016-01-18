//
//  Lawyer.m
//  LawyerUp2
//
//  Created by Benson Huynh on 2016-01-17.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "Lawyer.h"

@implementation Lawyer

-(instancetype)initWithName: (NSString *)name specialties:(TypesOfPractices)specialties practice:(Practice*)practice{
    self = [super init];
    if (self) {
        _name = name;
        _specialties = specialties;
        _lawyerRates = [practice.rates objectForKey:[practice practiceString:specialties]];
        _clientList = [[NSMutableArray alloc] init];
        
    }
    return self;
}

-(void)addClient:(Client*)client {
    if (self.clientList) {
        [self.delegate addClientToClientList:client forLawyer:self];
        
    }
    
}

-(int)getPayableAmountForClient:(Client*)client {
    return  [self.delegate payableAmountForClient:client forLawyer:self];
    
}

@end
