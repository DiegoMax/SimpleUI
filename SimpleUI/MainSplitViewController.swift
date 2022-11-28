//
//  MainSplitViewController.swift
//  AnimatedTableText
//
//  Created by Diego Massanti on 28/11/2022.
//

import Cocoa

class MainSplitViewController: NSSplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    /**
     By default, child splitViewItems will NOT be part of the responding chain, we override supplementalTarget so that we can add the child items to the responder chain
     */
    override func supplementalTarget(forAction action: Selector, sender: Any?) -> Any? {
        var respondingObject:Any?
        self.splitViewItems.forEach { item in
            if item.viewController.responds(to: action) {
                respondingObject = item.viewController
            }
        }
        if respondingObject == nil {
            return super.supplementalTarget(forAction: action, sender: sender)
        } else {
            return respondingObject
        }
    }
    
}
