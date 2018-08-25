//
//  CollectionViewItem.swift
//  CenterFlowCollectionView
//
//  Created by issam on 25/08/2018.
//  Copyright © 2018 ZetaLearning Inc. All rights reserved.
//

import Cocoa

class CollectionViewItem: NSCollectionViewItem {

    @IBOutlet weak var subject: NSButton!
    // 1
    var imageFile: ImageFile? {
        didSet {
            guard isViewLoaded else { return }
            if let imageFile = imageFile {
                subject?.image = imageFile.thumbnail
                subject?.title = imageFile.fileName
            }
        }
    }
    
    // 2
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.wantsLayer = true
        self.view.layerContentsRedrawPolicy = NSView.LayerContentsRedrawPolicy.onSetNeedsDisplay
        self.view.layer?.cornerRadius = 0.24 *  self.view.bounds.size.width
        self.view.layer?.borderWidth = 1.0
    }
    
}
