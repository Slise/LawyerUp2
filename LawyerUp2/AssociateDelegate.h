//
//  AssociateDelegate.h
//  LawyerUp2
//
//  Created by Benson Huynh on 2016-01-17.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Lawyer;
@class Client;

@protocol AssociateDelegate <NSObject>

-(void)addClientToClientList:(Client *)client forLawyer:(Lawyer *)lawyer;
-(int)payableAmountForClient:(Client *)client forLawyer:(Lawyer *)lawyer;

@end
