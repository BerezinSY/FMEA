//
//  PickerViewDelegate.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 05.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation
import UIKit

extension FmeaEditCreationTVC: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        switch pickerView {
        case fmeaTypePickerView:
            return pickerViewData.fmeaTypeArray[row]
        case affectPickerView:
            return pickerViewData.affect[row]
        case severityPickerView:
            return pickerViewData.severityIndexCriteria[row]
        case occurrencePickerView:
            return pickerViewData.occurrenceIndexCritetia[row]
        case detectionPickerView:
            return pickerViewData.detectionIndexCriteria[row]
        default:
            return nil
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch pickerView {
        case fmeaTypePickerView:
            tableViewRowStateManager.chooseValueFromArray(arrayOfElements: pickerViewData.fmeaTypeArray, selectedRow: row) { (selectedElement) in
                fmeaTypeLabel.text = selectedElement
            }
        case affectPickerView:
            tableViewRowStateManager.chooseValueFromArray(arrayOfElements: pickerViewData.affect, selectedRow: row) { (selectedElement) in
                affectLabel.text = selectedElement
            }
        case severityPickerView:
            tableViewRowStateManager.chooseValueFromArray(arrayOfElements: pickerViewData.severityIndexCriteria, selectedRow: row) { (selectedElement) in
                guard let rating = pickerViewData.severityIndexValue[selectedElement] else { return }
                severityLabel.text = String(rating)
            }
        case occurrencePickerView:
            tableViewRowStateManager.chooseValueFromArray(arrayOfElements: pickerViewData.occurrenceIndexCritetia, selectedRow: row) { (selectedElement) in
                guard let rating = pickerViewData.occurrenceIndexValue[selectedElement] else { return }
                occurrenceLabel.text = String(rating)
            }
        case detectionPickerView:
            tableViewRowStateManager.chooseValueFromArray(arrayOfElements: pickerViewData.detectionIndexCriteria, selectedRow: row) { (selectedElement) in
                guard let rating = pickerViewData.detectionIndexValue[selectedElement] else { return }
                detectionLabel.text = String(rating)
            }
        default:
            print("default")
        }
    }
}
