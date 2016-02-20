//
//  Balance.swift
//  Chelsea
//
//  Created by Dhiman on 11/14/15.
//  Copyright © 2015 Dhiman. All rights reserved.
//

import Foundation
import ResearchKit
import HealthKit


public var MicrophoneTask: ORKOrderedTask {
    return ORKOrderedTask.shortWalkTaskWithIdentifier("Balance Task", intendedUseDescription: "Take a short walk", numberOfStepsPerLeg: 20, restDuration: 6,options:ORKPredefinedTaskOption.ExcludeAudio )
}


