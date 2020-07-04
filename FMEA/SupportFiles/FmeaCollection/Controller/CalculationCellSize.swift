//
//  CalculationCellSize.swift
//  FMEA
//
//  Created by BEREZIN Stanislav on 04.07.2020.
//  Copyright © 2020 BEREZIN Stanislav. All rights reserved.
//

import Foundation
import UIKit


extension FmeaCollection {
    
    func calcOfCollectionCellSize(at collectionView: UICollectionView, edgeInsets: UIEdgeInsets, qtyCellsInRow: CGFloat) -> CGSize {
        let freeSpace = edgeInsets.left * (qtyCellsInRow + 1)
        let availableSpaceForCell = collectionView.frame.width - freeSpace
        let cellWidth = availableSpaceForCell / qtyCellsInRow
        return CGSize(width: cellWidth, height: cellWidth / 4)
    }
}
