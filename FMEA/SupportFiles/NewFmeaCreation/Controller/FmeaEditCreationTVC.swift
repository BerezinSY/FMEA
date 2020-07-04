//
//  FmeaEditCreationTVC.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 04.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

class FmeaEditCreationTVC: UITableViewController {
    
    //MARK: Outlets from View
    @IBOutlet weak var fmeaTypeLabel: UILabel!
    @IBOutlet weak var fmeaTypePickerView: UIPickerView!
    @IBOutlet weak var creationDateLabel: UILabel!
    @IBOutlet weak var creationDatePicker: UIDatePicker!
    @IBOutlet weak var modificationLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var partNameLabel: UILabel!
    @IBOutlet weak var partNumberLabel: UILabel!
    @IBOutlet weak var technologyLabel: UILabel!
    @IBOutlet weak var affectLabel: UILabel!
    @IBOutlet weak var affectPickerView: UIPickerView!
    @IBOutlet weak var severityLabel: UILabel!
    @IBOutlet weak var severityPickerView: UIPickerView!
    @IBOutlet weak var occurrenceLabel: UILabel!
    @IBOutlet weak var occurrencePickerView: UIPickerView!
    @IBOutlet weak var detectionLabel: UILabel!
    @IBOutlet weak var detectionPickerView: UIPickerView!
    @IBOutlet weak var rpnLabel: UILabel!
    @IBOutlet weak var preventControlActionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
