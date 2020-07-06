//
//  Observer.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 05.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation

var fmeaTypeRowState = true
var dateRowState = true
var affectRowState = true
var severityRowState = true
var occurrenceRowState = true
var detectionRowState = true


protocol State {
    func invert()
    func reset()
}

struct InitialState: State {
    func invert() {
    }
    
    func reset() {
        fmeaTypeRowState = true
        dateRowState = true
        affectRowState = true
        severityRowState = true
        occurrenceRowState = true
        detectionRowState = true
    }
}

struct FmeaTypeRowState: State {
    func invert() {
        fmeaTypeRowState = !fmeaTypeRowState
    }
    
    func reset() {
        dateRowState = true
        affectRowState = true
        severityRowState = true
        occurrenceRowState = true
        detectionRowState = true
    }
}


struct DateRowState: State {
    func invert() {
        dateRowState = !dateRowState
    }
    
    func reset() {
        fmeaTypeRowState = true
        affectRowState = true
        severityRowState = true
        occurrenceRowState = true
        detectionRowState = true
    }
}


struct AffectRowState: State {
    func invert() {
        affectRowState = !affectRowState
    }
    
    func reset() {
        fmeaTypeRowState = true
        dateRowState = true
        severityRowState = true
        occurrenceRowState = true
        detectionRowState = true
    }
}


struct SeverityRowState: State {
    func invert() {
        severityRowState = !severityRowState
    }
    
    func reset() {
        fmeaTypeRowState = true
        dateRowState = true
        affectRowState = true
        occurrenceRowState = true
        detectionRowState = true
    }
}


struct OccurrenceRowState: State {
    func invert() {
        occurrenceRowState = !occurrenceRowState
    }
    
    func reset() {
        fmeaTypeRowState = true
        dateRowState = true
        affectRowState = true
        severityRowState = true
        detectionRowState = true
    }
}


struct DetectionRowState: State {
    func invert() {
        detectionRowState = !detectionRowState
    }
    
    func reset() {
        fmeaTypeRowState = true
        dateRowState = true
        affectRowState = true
        severityRowState = true
        occurrenceRowState = true
    }
}

struct Switcher {
    
    private var state: State!
    
    mutating func setState(forState state: State) {
        self.state = state
    }
    
    func makeSwitch() {
        state.invert()
        state.reset()
    }
}
