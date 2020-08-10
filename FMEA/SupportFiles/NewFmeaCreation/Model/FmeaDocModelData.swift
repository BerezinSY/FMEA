//
//  FmeaDocModelData.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 04.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation

struct FmeaDocModelData {
    var fmeaType: String?
    var creationDate: String?
    var modificationDate: String?
    var defectName: String?
    var potentialFailure: String?
    var imageView: Data?
    var partName: String?
    var partNumber: String?
    var technologyName: String?
    var affect: String?
    var severityRating: Int?
    var occurrenceRating: Int?
    var detectionRating: Int?
    var rpn: Int?
    var preventionControlAction: ActionModelData?
}
