//
//  ContentViewController.swift
//  AnimatedTableText
//
//  Created by Diego Massanti on 27/11/2022.
//

import Cocoa

class ContentViewController: NSViewController {
    
    @IBOutlet var textView:NSTextView?

    override func viewDidLoad() {
        super.viewDidLoad()
        textView?.bind(.value, to: ContentController.shared.arrayController, withKeyPath: "selection.content", options: [.conditionallySetsEditable: false])
        textView?.textStorage?.font = .systemFont(ofSize: 14)
    }
    
}
