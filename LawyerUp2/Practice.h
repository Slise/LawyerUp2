//
//  Practice.h
//  LawyerUp2
//
//  Created by Benson Huynh on 2016-01-17.
//  Copyright © 2016 Benson Huynh. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum: NSUInteger {
    TypesOfPracticesFamilyLaw,
    TypesOfPracticesPatentLaw,
    TypesOfPracticesCriminalLaw,
    TypesOfPracticesCorporateLaw
} TypesOfPractices;

@interface Practice : NSObject

@property (nonatomic, strong) NSDictionary *rates;
@property (nonatomic, strong) NSArray *lawyer;

- (NSString *) practiceString: (TypesOfPractices) practiceEnum;

@end
