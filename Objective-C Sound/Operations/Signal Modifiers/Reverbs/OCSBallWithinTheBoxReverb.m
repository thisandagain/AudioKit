//
//  OCSBallWithinTheBoxReverb.m
//  Objective-C Sound
//
//  Auto-generated from database on 11/2/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//
//  Implementation of Csound's babo:
//  http://www.csounds.com/manual/html/babo.html
//

#import "OCSBallWithinTheBoxReverb.h"

@interface OCSBallWithinTheBoxReverb () {
    OCSConstant *irx;
    OCSConstant *iry;
    OCSConstant *irz;
    OCSControl *ksrcx;
    OCSControl *ksrcy;
    OCSControl *ksrcz;
    OCSAudio *asig;
    OCSConstant *idiff;
}
@end

@implementation OCSBallWithinTheBoxReverb

- (id)initWithLengthOfXAxisEdge:(OCSConstant *)lengthOfXAxisEdge
              lengthOfYAxisEdge:(OCSConstant *)lengthOfYAxisEdge
              lengthOfZAxisEdge:(OCSConstant *)lengthOfZAxisEdge
                      xLocation:(OCSControl *)xLocation
                      yLocation:(OCSControl *)yLocation
                      zLocation:(OCSControl *)zLocation
                    audioSource:(OCSAudio *)audioSource
{
    self = [super initWithString:[self operationName]];
    if (self) {
        irx = lengthOfXAxisEdge;
        iry = lengthOfYAxisEdge;
        irz = lengthOfZAxisEdge;
        ksrcx = xLocation;
        ksrcy = yLocation;
        ksrcz = zLocation;
        asig = audioSource;
        idiff = ocsp(0);
    }
    return self;
}

- (void)setOptionalDiffusion:(OCSConstant *)diffusion {
	idiff = diffusion;
}

- (NSString *)stringForCSD {
    return [NSString stringWithFormat:
            @"%@ babo %@, %@, %@, %@, %@, %@, %@, %@",
            self, asig, ksrcx, ksrcy, ksrcz, irx, iry, irz, idiff];
}

@end