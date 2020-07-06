//
//  FmeaEditCreationTVC.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 04.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

class FmeaEditCreationTVC: UITableViewController {
    
    let pickerViewData = PickerViewData()
    let tableViewRowStateManager = TableViewRowStateManager()
    
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
    
    // MARK: Initial states for pickerViewRows
    var switcher = Switcher()
    var heightForRow: CGFloat!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func updateTableView() {
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    // MARK: TableView Delegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath{
        case [0, 0]:
            switcher.setState(forState: FmeaTypeRowState())
            switcher.makeSwitch()
            updateTableView()
        case [0, 2]:
            switcher.setState(forState: DateRowState())
            switcher.makeSwitch()
            updateTableView()
        case [3, 0]:
            switcher.setState(forState: AffectRowState())
            switcher.makeSwitch()
            updateTableView()
        case [3, 2]:
            switcher.setState(forState: SeverityRowState())
            switcher.makeSwitch()
            updateTableView()
        case [3, 4]:
            switcher.setState(forState: OccurrenceRowState())
            switcher.makeSwitch()
            updateTableView()
        case [3, 6]:
            switcher.setState(forState: DetectionRowState())
            switcher.makeSwitch()
            updateTableView()
        default:
            switcher.setState(forState: InitialState())
            switcher.makeSwitch()
            updateTableView()
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath == [0, 1] && fmeaTypeRowState {
            return 0
        }
        
        if indexPath == [0, 3] && dateRowState {
            return 0
        }
        
        if indexPath == [3, 1] && affectRowState {
            return 0
        }
        
        if indexPath == [3, 3] && severityRowState {
            return 0
        }
        
        if indexPath == [3, 5] && occurrenceRowState {
            return 0
        }
        
        if indexPath == [3, 7] && detectionRowState {
            return 0
        } else {
            return super.tableView(tableView, heightForRowAt: indexPath)
        }
    }
}
