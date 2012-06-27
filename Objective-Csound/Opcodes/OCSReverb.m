//
//  OCSReverb.m
//
//  Created by Aurelius Prochazka on 6/9/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//

#import "OCSReverb.h"

@interface OCSReverb () {
    OCSParam *outputLeft;
    OCSParam *outputRight;
    OCSParam *inputLeft;
    OCSParam *inputRight;
    OCSParamControl *feedback;
    OCSParamControl *cutoff;
}
@end

@implementation OCSReverb

@synthesize outputLeft;
@synthesize outputRight;

- (id)initWithLeftInput:(OCSParam *)leftInput
             RightInput:(OCSParam *)rightInput
          FeedbackLevel:(OCSParamControl *)feedbackLevel
        CutoffFrequency:(OCSParamControl *)cutoffFrequency;
{
    self = [super init];
    if (self) {
        outputLeft  = [OCSParam paramWithString:[NSString stringWithFormat:@"%@%@",[self opcodeName], @"L"]];
        outputRight = [OCSParam paramWithString:[NSString stringWithFormat:@"%@%@",[self opcodeName], @"R"]];
        inputLeft   = leftInput;
        inputRight  = rightInput;
        feedback    = feedbackLevel;
        cutoff      = cutoffFrequency;
    }
    return self; 
}

- (id)initWithMonoInput:(OCSParam *)monoInput
          FeedbackLevel:(OCSParamControl *)feedbackLevel
        CutoffFrequency:(OCSParamControl *)cutoffFrequency;
{
    return [self initWithLeftInput:monoInput 
                        RightInput:monoInput
                     FeedbackLevel:feedbackLevel
                   CutoffFrequency:cutoffFrequency];
}

- (NSString *)stringForCSD
{
    return [NSString stringWithFormat:
            @"%@, %@ reverbsc %@, %@, %@, %@\n",
            outputLeft, outputRight, inputLeft, inputRight, feedback, cutoff];
}

@end