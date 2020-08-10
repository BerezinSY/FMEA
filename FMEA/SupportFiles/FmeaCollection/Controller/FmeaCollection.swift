//
//  FmeaCollection.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 04.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import UIKit

private let reuseIdentifier = "fmeaCollectionCell"

class FmeaCollection: UICollectionViewController {
    
    //MARK: Properties for size of collectionCell calculation
    
    let qtyCellsInRow: CGFloat = 1
    let sectionInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! FmeaCollectionCell
        cell.layer.cornerRadius = 10
        cell.imageView.layer.cornerRadius = cell.layer.cornerRadius / 2
        return cell
    }
    
    @IBAction func unwindToCancel(for segue: UIStoryboardSegue) {}
    
    @IBAction func unwindToFmeaCollectionScreen(for segue: UIStoryboardSegue) {
        
    }
}
