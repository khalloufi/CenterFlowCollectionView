//
//  CenterCollectionView.swift
//  CenterFlowCollectionView
//
//  Created by issam on 26/08/2018.
//  Copyright © 2018 ZetaLearning Inc. All rights reserved.
//

import Cocoa

class CenterCollectionView: NSCollectionView {
    override func setFrameSize(_ newSize: NSSize) {
        let size = collectionViewLayout?.collectionViewContentSize ?? newSize
        super.setFrameSize(size)
    }
}
