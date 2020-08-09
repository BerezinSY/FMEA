//
//  FmeaDocModelData.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 04.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation

struct FmeaDocModelData {
    let fmeaType: String?
    let creationDate: String?
    let modificationDate: String?
    let defectName: String?
    let potentialFailure: String?
    let imageView: Data?
    let partName: String?
    let partNumber: String?
    let technologyName: String?
    let affect: String?
    let severityRating: Int?
    let occurrenceRating: Int?
    let detectionRating: Int?
    let rpn: Int?
    let preventionControlAction: ActionModelData?
}
