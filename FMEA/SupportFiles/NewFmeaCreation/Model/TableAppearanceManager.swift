//
//  TableAppearanceManager.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 09.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation

struct TableAppearanceManager {
    
    var switcher = Switcher()
    
    mutating func switchState(forIndexPath indexPath: IndexPath) {
        
        switch indexPath {
        case [0, 0]:
            switcher.set(state: State1())
            switcher.switchState()
        case [0, 2]:
            switcher.set(state: State2())
            switcher.switchState()
        case [3, 0]:
            switcher.set(state: State3())
            switcher.switchState()
        case [3, 2]:
            switcher.set(state: State4())
            switcher.switchState()
        case [3, 4]:
            switcher.set(state: State5())
            switcher.switchState()
        case [3, 6]:
            switcher.set(state: State6())
            switcher.switchState()
        default:
            switcher.set(state: Reset())
        }
    }
    
    func getstate(forIndexPath indexPath: IndexPath, defaultValue base: Int) -> Int {
        switch indexPath {
        case [0, 1] where switcher.state1(): return 0
        case [0, 3] where switcher.state2(): return 0
        case [3, 1] where switcher.state3(): return 0
        case [3, 3] where switcher.state4(): return 0
        case [3, 5] where switcher.state5(): return 0
        case [3, 7] where switcher.state6(): return 0
        default: return base
        }
    }
}
