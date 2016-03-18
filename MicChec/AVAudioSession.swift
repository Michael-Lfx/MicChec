//
//  AVAudioSession.swift
//  Pallotone
//
//  Created by Scott McAlister on 3/17/16.
//  Copyright © 2016 Scott McAlister. All rights reserved.
//

import AVFoundation

extension AVAudioSession {
    
    func sessionText() -> String {
        var sessionText = "\(self)\n"
        sessionText += "\t category: \(self.category)\n"
        sessionText += "\t categoryOptions: \(self.categoryOptions)\n"
        sessionText += "\t mode: \(self.mode)\n"
        sessionText += "\t outputVolume: \(self.outputVolume)\n"
        sessionText += "\t outputLatency: \(self.outputLatency)\n"
        sessionText += "\t inputGain: \(self.inputGain)\n"
        sessionText += "\t inputLatency: \(self.inputLatency)\n"
        sessionText += "\t IOBufferDuration: \(self.IOBufferDuration)\n"
        sessionText += "\t inputNumberOfChannels: \(self.inputNumberOfChannels)\n"
        sessionText += "\t outputNumberOfChannels: \(self.outputNumberOfChannels)\n"
        sessionText += "\t currentRoute: \(self.currentRoute)\n"
        sessionText += "\t inputDataSources: \(self.inputDataSources)\n"
        sessionText += "\t outputDataSources: \(self.outputDataSources)\n"
        return sessionText
    }
}