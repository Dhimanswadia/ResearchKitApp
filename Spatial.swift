//
//  Spatial.swift
//  Chelsea
//
//  Created by Dhiman on 11/15/15.
//  Copyright © 2015 Dhiman. All rights reserved.
//

import Foundation
import ResearchKit
import ResearchKit
public var MicrophoneTask2: ORKOrderedTask {
    return ORKOrderedTask.spatialSpanMemoryTaskWithIdentifier("Spatial", intendedUseDescription: "We will tetst your spatial Memory", initialSpan: 8, minimumSpan: 5, maximumSpan: 20, playSpeed: 2, maxTests: 3, maxConsecutiveFailures: 2, customTargetImage: nil, customTargetPluralName: "Flower", requireReversal: true, options: ORKPredefinedTaskOption.ExcludeInstructions)
}
