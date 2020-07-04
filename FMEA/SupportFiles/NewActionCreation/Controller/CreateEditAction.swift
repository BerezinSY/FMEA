//
//  CreateEditAction.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 04.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

class CreateEditAction: UITableViewController {
    
    //MARK: Outlets from view
    @IBOutlet weak var actionNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var applicationDateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var severityRatingLabel: UILabel!
    @IBOutlet weak var severityPickerView: UIPickerView!
    @IBOutlet weak var occurrenceRatingLabel: UILabel!
    @IBOutlet weak var occurrencePickerView: UIPickerView!
    @IBOutlet weak var detectionRatingLabel: UILabel!
    @IBOutlet weak var detectionPickerView: UIPickerView!
    @IBOutlet weak var rpnLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
