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
            return pickerViewData.fmeaType[row]
            
        case affectPickerView:
            return pickerViewData.affect[row]
            
        case severityPickerView:
            return pickerViewData.severityIndexExplain[row]
            
        case occurrencePickerView:
            return pickerViewData.occurrenceIndexExplain[row]
            
        case detectionPickerView:
            return pickerViewData.detectionIndexExpain[row]
            
        default:
            return nil
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch pickerView {
            
        case fmeaTypePickerView:
            tableViewRowStateManager.chooseValueFromArray(arrayOfElements: pickerViewData.fmeaType, selectedRow: row) { (selectedElement) in
                fmeaTypeLabel.text = selectedElement
            }
            
        case affectPickerView:
            tableViewRowStateManager.chooseValueFromArray(arrayOfElements: pickerViewData.affect, selectedRow: row) { (selectedElement) in
                affectLabel.text = selectedElement
            }
            
        case severityPickerView:
            tableViewRowStateManager.chooseValueFromArray(arrayOfElements: pickerViewData.severityIndexExplain, selectedRow: row) { (selectedElement) in
                guard let severityRating = pickerViewData.severityRatingIndex[selectedElement] else { return }
                severityLabel.text = String(severityRating)
            }
            
            
            
            
            
            
            
            
        default:
            print("default")
        }
    }
}
