//
//  UISourceOfTruth.swift
//  AnimatedTables
//
//  Created by Diego Massanti on 28/11/2022.
//

import Cocoa

class UISourceOfTruth: NSObject {
    
    @objc dynamic var sidebarSubtitlesVisible:Bool = true
    
    static let shared = UISourceOfTruth()
    
    
    
    func toggleSubtitlesVisible() {
        self.sidebarSubtitlesVisible = !self.sidebarSubtitlesVisible
    }
    
}
