//
//  FmeaEditCreationTVC.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 04.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

class FmeaEditCreationTVC: UITableViewController {
    
    var pickerViewData = PickerViewData()
    let pickerViewDataSelector = PickerViewDataSelector()
    var switcher = Switcher()
    
    //MARK: Outlets from View
    @IBOutlet weak var fmeaTypeLabel: UILabel!
    @IBOutlet weak var fmeaTypePickerView: UIPickerView!
    @IBOutlet weak var creationDateLabel: UILabel!
    @IBOutlet weak var creationDatePicker: UIDatePicker!
    @IBOutlet weak var modificationLabel: UILabel!
    @IBOutlet weak var defectNameLabel: UILabel!
    @IBOutlet weak var potentialFailureLabel: UILabel!
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
        pickerViewData.loadDataToPickerView()
    }
    
    private func updateTableView() {
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    // MARK: TableView Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath {
        case [0, 0]:
            switcher.set(state: State1())
            switcher.switchState()
            updateTableView()
        case [0, 2]:
            switcher.set(state: State2())
            switcher.switchState()
            updateTableView()
        case [3, 0]:
            switcher.set(state: State3())
            switcher.switchState()
            updateTableView()
        case [3, 2]:
            switcher.set(state: State4())
            switcher.switchState()
            updateTableView()
        case [3, 4]:
            switcher.set(state: State5())
            switcher.switchState()
            updateTableView()
        case [3, 6]:
            switcher.set(state: State6())
            switcher.switchState()
            updateTableView()
        default:
            switcher.set(state: Reset())
            updateTableView()
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath {
        case [0, 1] where switcher.state1() == true: return 0
        case [0, 3] where switcher.state2() == true: return 0
        case [3, 1] where switcher.state3() == true: return 0
        case [3, 3] where switcher.state4() == true: return 0
        case [3, 5] where switcher.state5() == true: return 0
        case [3, 7] where switcher.state6() == true: return 0
        
        default: return super.tableView(tableView, heightForRowAt: indexPath)
        }
    }
}
