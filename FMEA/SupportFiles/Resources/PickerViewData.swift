//
//  StaticPickerViewData.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 21.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation

struct PickerViewData {
    
    var fmeaTypeArray: [String] = []
    var affect: [String] = []
    var severityIndexCriteria: [String] = []
    var severityIndexValue: [String: Int] = [:]
    var occurrenceIndexCritetia: [String] = []
    var occurrenceIndexValue: [String: Int] = [:]
    var detectionIndexCriteria: [String] = []
    var detectionIndexValue: [String: Int] = [:]
    
    mutating func loadDataToPickerView() {
        guard let path = Bundle.main.path(forResource: "PickerViewData", ofType: ".plist") else { return }
        guard let dictionary = NSDictionary(contentsOfFile: path) else { return }
        guard let fmeaTypeArray = dictionary.object(forKey: "FmeaType") as? [String] else { return }
        guard let affect = dictionary.object(forKey: "Affect") as? [String] else { return }
        guard let severityIndexCriteria = dictionary.object(forKey: "SeverityIndexCriteria") as? [String] else { return }
        guard let severityIndexValue = dictionary.object(forKey: "SeverityIndexValue") as? [String: Int] else { return }
        guard let occurrenceIndexCritetia = dictionary.object(forKey: "OccurrenceIndexCritetia") as? [String] else { return }
        guard let occurrenceIndexValue = dictionary.object(forKey: "OccurrenceIndexValue") as? [String: Int] else { return }
        guard let detectionIndexCriteria = dictionary.object(forKey: "DetectionIndexCriteria") as? [String] else { return }
        guard let detectionIndexValue = dictionary.object(forKey: "DetectionIndexValue") as? [String: Int] else { return }
        self.fmeaTypeArray = fmeaTypeArray
        self.affect = affect
        self.severityIndexCriteria = severityIndexCriteria
        self.severityIndexValue = severityIndexValue
        self.occurrenceIndexCritetia = occurrenceIndexCritetia
        self.occurrenceIndexValue = occurrenceIndexValue
        self.detectionIndexCriteria = detectionIndexCriteria
        self.detectionIndexValue = detectionIndexValue
    }
    
}
