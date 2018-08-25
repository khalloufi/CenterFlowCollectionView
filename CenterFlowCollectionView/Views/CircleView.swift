//
//  CircleView.swift
//  CenterFlowCollectionView
//
//  Created by issam on 25/08/2018.
//  Copyright © 2018 ZetaLearning Inc. All rights reserved.
//

import Cocoa
@IBDesignable
class CircleView: NSView {
    @IBInspectable lazy var bgColor:NSColor = {
        return NSColor.clear
    }()
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        let path = NSBezierPath(ovalIn: dirtyRect)
        bgColor.setFill()
        path.fill()
    }
    
}
