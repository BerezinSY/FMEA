//
//  ImagePickerController.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 11.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

extension FmeaEditCreationTVC {
    
    func chooseImageSource(in source: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = true
            imagePicker.sourceType = source
            present(imagePicker, animated: true)
        }
    }
}
