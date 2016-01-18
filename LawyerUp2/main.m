//
//  main.m
//  LawyerUp2
//
//  Created by Benson Huynh on 2016-01-17.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lawyer.h"
#import "Client.h"
#import "Practice.h"
#import "Associate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Practice *divorcePractice = [[Practice alloc] init];
        Practice *patentPractice = [[Practice alloc] init];
        
        Associate *associate1 = [[Associate alloc] init];
        
        Lawyer *lawyer1 = [[Lawyer alloc] initWithName:@"lawyerCory" specialties:TypesOfPracticesPatentLaw practice:patentPractice];
        Lawyer *lawyer2 = [[Lawyer alloc] initWithName:@"lawyerBenson" specialties:TypesOfPracticesFamilyLaw practice:divorcePractice];
        
        Client *client1 = [[Client alloc] initWithName:@"clientThomas" descriptionOfProblem:@"wants to get custody of kids" specialtyType:TypesOfPracticesFamilyLaw];
        
        Client *client2 = [[Client alloc] initWithName:@"clientAdam" descriptionOfProblem:@"is sueing over his Apple weed app" specialtyType:TypesOfPracticesPatentLaw];
        
        lawyer2.delegate = associate1;
        [lawyer2 addClient:client1];
        
        int clientAmount = [associate1 payableAmountForClient:client1 forLawyer:lawyer2];
        
        NSLog(@"client owes %d", clientAmount);
    }
    return 0;
}
