//
//  Associate.m
//  LawyerUp2
//
//  Created by Benson Huynh on 2016-01-17.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import "Associate.h"

@implementation Associate

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer {
    [lawyer.clientList addObject:client];
}

-(int)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer {
    
    int numberOfCharacters = client.descriptionOfProblem.length;
    int payableAmount = 0;
    
    
    if (numberOfCharacters < 10) {
        payableAmount = lawyer.lawyerRates.intValue * 5;
        
    } else if (numberOfCharacters < 20) {
        payableAmount = lawyer.lawyerRates.intValue * 10;
        
    }else{
        payableAmount = lawyer.lawyerRates.intValue * 25;
    }
    return payableAmount;
}
@end
