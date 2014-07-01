//
//  UDOPitchShifter.h
//  AudioKit
//
//  Created by Aurelius Prochazka on 6/23/12.
//  Copyright (c) 2012 Hear For Yourself. All rights reserved.
//
//  Pitch Shifter from the csGrain app

#import "AKStereoAudio.h"
#import "AKParameter+Operation.h"

/** Pitch shifter from Boulanger Labs' csGrain application.
 Stereo audio input and output.
 */
@interface UDOCSGrainPitchShifter : AKStereoAudio

/** Instantiates the pitch shifter.
 
 @param sourceStereo               Input to the left and right channels.
 @param basePitch                  The pitch to shift by in pitch notation.
 @param fineTuningOffsetFrequency  Frequency in Hz that will be added to the converted pitch frequency (a negative will detune).
 @param feedbackLevel              Typically a value from 0.0 (no feedback to 1.0 (100% feedback).
 @return                           An instance of the pitch shifter.
 */
- (instancetype)initWithSourceStereoAudio:(AKStereoAudio *)sourceStereo
                                basePitch:(AKControl *)basePitch
                          offsetFrequency:(AKControl *)fineTuningOffsetFrequency
                            feedbackLevel:(AKControl *)feedbackLevel;

@end