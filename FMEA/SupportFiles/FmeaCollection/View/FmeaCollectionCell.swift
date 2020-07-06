//
//  FmeaCollectionCell.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 04.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

class FmeaCollectionCell: UICollectionViewCell {
    
    //MARK: Outlets from View
    @IBOutlet weak var defectNameLabel: UILabel!
    @IBOutlet weak var partNameLabel: UILabel!
    @IBOutlet weak var partNumberLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var defectName: String?
    var partName: String?
    var partNumber: String?
}
