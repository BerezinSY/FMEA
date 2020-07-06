//
//  PickerViewData.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 05.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation

struct PickerViewData {
    
    let fmeaType = ["DFMEA", "PFMEA"]
    
    let affect = ["Safety", "Assembly", "Function", "Appearance"]
    
    let severityRatingIndex = ["Affect to safety without warning": 10,
                               "Affect to safety with warning": 9,
                               "Loss primary function": 8,
                               "Degradation primary function": 7,
                               "Loss secondary function": 6,
                               "Degradation secondary function": 5,
                               "NC noticed by most customers": 4,
                               "NC noticed by many customers": 3,
                               "NC noticed by legible customers": 2,
                               "No affect": 1]
    
    let severityIndexExplain = ["Affect to safety without warning",
                                "Affect to safety with warning",
                                "Loss primary function",
                                "Degradation primary function",
                                "Loss secondary function",
                                "Degradation secondary function",
                                "NC noticed by most customers",
                                "NC noticed by many customers",
                                "NC noticed by legible customers",
                                "No affect"]
    
    let occurrenceRatingIndex = ["More or equal 1 in 10": 10,
                                 "Equal 1 in 20": 9,
                                 "Equal 1 in 50": 8,
                                 "Equal 1 in 100": 7,
                                 "Equal 1 in 500": 6,
                                 "Equal 1 in 2000": 5,
                                 "Equal 1 in 10000": 4,
                                 "Equal 1 in 100000": 3,
                                 "Equal 1 in 1000000": 2,
                                 "Poka Yoke in process": 1]
    
    let occurrenceIndexExplain = ["More or equal 1 in 10",
                                  "Equal 1 in 20",
                                  "Equal 1 in 50",
                                  "Equal 1 in 100",
                                  "Equal 1 in 500",
                                  "Equal 1 in 2000",
                                  "Equal 1 in 10000",
                                  "Equal 1 in 100000",
                                  "Equal 1 in 1000000",
                                  "Poka Yoke in process"]
    
    let detectionRatingIndex = ["None": 10,
                                "Sampled control": 9,
                                "Accept based on no defective": 8,
                                "100 % visual control": 7,
                                "100 % go/no-go": 6,
                                "SPC offline": 5,
                                "SPC online": 4,
                                "SPC with Cpk>1,33": 3,
                                "Sampled automatic": 2,
                                "100% automatic": 1]
    
    let detectionIndexExpain = ["None",
                                "Sampled control",
                                "Accept based on no defective",
                                "100 % visual control",
                                "100 % go/no-go",
                                "SPC offline",
                                "SPC online",
                                "SPC with Cpk>1,33",
                                "Sampled automatic",
                                "100% automatic"]
}
