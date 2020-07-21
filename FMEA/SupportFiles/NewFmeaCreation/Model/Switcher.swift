//
//  Switcher1.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 07.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation

protocol State {
    mutating func switchState(_ state: Bool)
    func state1() -> Bool
    func state2() -> Bool
    func state3() -> Bool
    func state4() -> Bool
    func state5() -> Bool
    func state6() -> Bool
}

struct Reset: State {
    
    mutating func switchState(_ state: Bool) {}
    
    func state1() -> Bool {
        return true
    }
    
    func state2() -> Bool {
        return true
    }
    
    func state3() -> Bool {
        return true
    }
    
    func state4() -> Bool {
        return true
    }
    
    func state5() -> Bool {
        return true
    }
    
    func state6() -> Bool {
        return true
    }
}

struct State1: State {
    
    private var state = true
    
    mutating func switchState(_ state: Bool) {
        self.state = state
    }
    
    func state1() -> Bool {
        return state
    }
    
    func state2() -> Bool {
        return true
    }
    
    func state3() -> Bool {
        return true
    }
    
    func state4() -> Bool {
        return true
    }
    
    func state5() -> Bool {
        return true
    }
    
    func state6() -> Bool {
        return true
    }
}

struct State2: State {
    
    private var state = true
    
    mutating func switchState(_ state: Bool) {
        self.state = state
    }
    
    func state1() -> Bool {
        return true
    }
    
    func state2() -> Bool {
        return state
    }
    
    func state3() -> Bool {
        return true
    }
    
    func state4() -> Bool {
        return true
    }
    
    func state5() -> Bool {
        return true
    }
    
    func state6() -> Bool {
        return true
    }
}

struct State3: State {
    
    private var state = true
    
    mutating func switchState(_ state: Bool) {
        self.state = state
    }
    
    func state1() -> Bool {
        return true
    }
    
    func state2() -> Bool {
        return true
    }
    
    func state3() -> Bool {
        return state
    }
    
    func state4() -> Bool {
        return true
    }
    
    func state5() -> Bool {
        return true
    }
    
    func state6() -> Bool {
        return true
    }
}

struct State4: State {
    
    private var state = true
    
    mutating func switchState(_ state: Bool) {
        self.state = state
    }
    
    func state1() -> Bool {
        return true
    }
    
    func state2() -> Bool {
        return true
    }
    
    func state3() -> Bool {
        return true
    }
    
    func state4() -> Bool {
        return state
    }
    
    func state5() -> Bool {
        return true
    }
    
    func state6() -> Bool {
        return true
    }
}

struct State5: State {
    
    private var state = true
    
    mutating func switchState(_ state: Bool) {
        self.state = state
    }
    
    func state1() -> Bool {
        return true
    }
    
    func state2() -> Bool {
        return true
    }
    
    func state3() -> Bool {
        return true
    }
    
    func state4() -> Bool {
        return true
    }
    
    func state5() -> Bool {
        return state
    }
    
    func state6() -> Bool {
        return true
    }
}

struct State6: State {
    
    private var state = true
    
    mutating func switchState(_ state: Bool) {
        self.state = state
    }
    
    func state1() -> Bool {
        return true
    }
    
    func state2() -> Bool {
        return true
    }
    
    func state3() -> Bool {
        return true
    }
    
    func state4() -> Bool {
        return true
    }
    
    func state5() -> Bool {
        return true
    }
    
    func state6() -> Bool {
        return state
    }
}

struct Switcher {
    
    private var state: State?
    
    private var remoteState1 = true
    private var remoteState2 = true
    private var remoteState3 = true
    private var remoteState4 = true
    private var remoteState5 = true
    private var remoteState6 = true
    
    mutating func set(state: State) {
        self.state = state
    }
    
    mutating func switchState() {
        switch state {
        case is State1:
            remoteState1.toggle()
            state?.switchState(remoteState1)
            remoteState2 = true
            remoteState3 = true
            remoteState4 = true
            remoteState5 = true
            remoteState6 = true
        case is State2:
            remoteState2.toggle()
            state?.switchState(remoteState2)
            remoteState1 = true
            remoteState3 = true
            remoteState4 = true
            remoteState5 = true
            remoteState6 = true
        case is State3:
            remoteState3.toggle()
            state?.switchState(remoteState3)
            remoteState1 = true
            remoteState2 = true
            remoteState4 = true
            remoteState5 = true
            remoteState6 = true
        case is State4:
            remoteState4.toggle()
            state?.switchState(remoteState4)
            remoteState1 = true
            remoteState2 = true
            remoteState3 = true
            remoteState5 = true
            remoteState6 = true
        case is State5:
            remoteState5.toggle()
            state?.switchState(remoteState5)
            remoteState1 = true
            remoteState2 = true
            remoteState3 = true
            remoteState4 = true
            remoteState6 = true
        case is State6:
            remoteState6.toggle()
            state?.switchState(remoteState6)
            remoteState1 = true
            remoteState2 = true
            remoteState3 = true
            remoteState4 = true
            remoteState5 = true
        default:
            print("")
        }
    }
    
    func state1() -> Bool {
        return state?.state1() ?? true
    }
    
    func state2() -> Bool {
        return state?.state2() ?? true
    }
    
    func state3() -> Bool {
        return state?.state3() ?? true
    }
    
    func state4() -> Bool {
        return state?.state4() ?? true
    }
    
    func state5() -> Bool {
        return state?.state5() ?? true
    }
    
    func state6() -> Bool {
        return state?.state6() ?? true
    }
}
