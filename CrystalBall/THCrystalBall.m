//
//  THCrystalBall.m
//  CrystalBall
//
//  Created by Amit Bijlani on 8/27/13.
//  Copyright (c) 2013 Treehouse. All rights reserved.
//

#import "THCrystalBall.h"

@implementation THCrystalBall

@synthesize predictions = _predictions;

- (NSArray *) predictions {

    if (_predictions == nil){
        _predictions = [[NSArray alloc] initWithObjects:@"E' sicuro!",@"Provaci!",@"Ci saranno imprevisti.",
                        @"Non sei tu che hai il controllo.",
                        @"Sarà certamente no.",
                        @"E' in dubbio.",
                        @"E' meglio che non sai...",
                        @"Concentrati e chiedimelo di nuovo.",
                        @"Ora non saprei come dirtelo.",
                        @"Non dimenticare di divertirti",
                        @"Metticela tutta",
                        @"E' indispensabile stabilir e le priorità",nil];
    }
    return _predictions;
}

- (NSString*) randomPrediction {
    NSUInteger random = arc4random_uniform((uint32_t)self.predictions.count);
    return [self.predictions objectAtIndex:random];
}

@end












