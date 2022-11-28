//
//  SideBarTableCellView.swift
//  AnimatedTableText
//
//  Created by Diego Massanti on 28/11/2022.
//

import Cocoa

class SideBarTableCellView: NSTableCellView {
    
    @IBOutlet var titleField:NSTextField?
    @IBOutlet var subtitleField:NSTextField?
    @IBOutlet var mainStackView:NSStackView?
    
    private var observer:NSKeyValueObservation?
    private var subtitleHeightConstraint:NSLayoutConstraint?

    
    private func updateUI() {
        if let ov = self.objectValue as? contentItem {
            titleField?.stringValue = ov.title
            subtitleField?.stringValue = ov.subtitle
        }
    }
    
    private func updateItemsVisibility(animated: Bool = false) {
        subtitleField?.isHidden = !subtitleVisible
    }
    
    override func awakeFromNib() {
        self.superview?.wantsLayer = true
        observer = UISourceOfTruth.shared.observe(\.sidebarSubtitlesVisible) { UISourceOfTruth, change in
            self.updateItemsVisibility()
        }
    }
    
    
    
    override var objectValue: Any? {
        didSet {
            self.updateUI()
            self.updateItemsVisibility()
        }
    }
    
    var subtitleVisible:Bool {
        return UISourceOfTruth.shared.sidebarSubtitlesVisible
    }
  
}



