//
//  CollectionViewItem.swift
//  CenterFlowCollectionView
//
//  Created by issam on 25/08/2018.
//  Copyright © 2018 ZetaLearning Inc. All rights reserved.
//

import Cocoa
extension CGFloat {
    static var random: CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
extension NSColor {
    static var random: NSColor {
        return NSColor(red: .random,
                       green: .random,
                       blue: .random,
                       alpha: 1.0)
    }
}
class CollectionViewItem: NSCollectionViewItem {

    @IBOutlet weak var subject: NSButton!
    @IBOutlet weak var circle: CircleView!
    // 1
    var imageFile: ImageFile? {
        didSet {
            guard isViewLoaded else { return }
            if let imageFile = imageFile {
                subject?.title = imageFile.fileName
                subject?.image = imageFile.thumbnail
                circle?.bgColor = NSColor.random
                let shadow = NSShadow()
                shadow.shadowBlurRadius = 7
                shadow.shadowColor = circle?.bgColor.withAlphaComponent(0.8)
                circle?.shadow = shadow
            }
        }
    }
    
    // 2
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
