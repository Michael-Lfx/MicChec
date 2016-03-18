//
//  TAAudioEngine.m
//  Pallotone
//
//  Created by Scott McAlister on 10/20/15.
//  Copyright © 2015 Scott McAlister. All rights reserved.
//

#import "TAAudioEngine.h"
#import "TheAmazingAudioEngine.h"
#import "AERecorder.h"



@interface TAAudioEngine ()

@property (nonatomic, strong) AEAudioController *audioController;

@end

@implementation TAAudioEngine

- (instancetype)init {
    if ((self = [super init])) {
        [self setup];
    }
    return self;
}

- (void)setup {
    self.audioController = [[AEAudioController alloc] initWithAudioDescription:AEAudioStreamBasicDescriptionNonInterleavedFloatStereo];
    if (_audioController) {
        _audioController.preferredBufferDuration = 0.005;
//        _audioController.useMeasurementMode = YES;
//        _audioController.boostBuiltInMicGainInMeasurementMode = YES;
//        _audioController.voiceProcessingOnlyForSpeakerAndMicrophone = YES;
        _audioController.automaticLatencyManagement = YES;
        [_audioController start:nil];
    }
    NSError *error = nil;
    if (![_audioController setInputEnabled:YES error:&error]) {
        NSLog(@"ERROR: setInputEnabled: %@", [error localizedDescription]);
    }
}

@end
