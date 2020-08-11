//
//  AlertController.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 11.08.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

extension FmeaEditCreationTVC {
    
    func showActionSheet() {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        let camera = UIAlertAction(title: "Camera", style: .default) { _ in
            self.chooseImageSource(in: .camera)
        }
        
        let photo = UIAlertAction(title: "Gallery", style: .default) { _ in
            self.chooseImageSource(in: .photoLibrary)
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        actionSheet.addAction(camera)
        actionSheet.addAction(photo)
        actionSheet.addAction(cancel)
        
        present(actionSheet, animated: true)
    }
}
