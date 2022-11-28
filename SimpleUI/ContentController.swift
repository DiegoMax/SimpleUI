//
//  ContentGenerator.swift
//  AnimatedTableText
//
//  Created by Diego Massanti on 27/11/2022.
//

import Cocoa

@objcMembers
class contentItem : NSObject {
    var title:String = ""
    var subtitle:String = ""
    var content:String = ""
}

@objc
class ContentController: NSObject {
    
    var items:Array<contentItem> = Array()
    
    @objc var arrayController:NSArrayController = NSArrayController()
    @objc var selectionIndexes:NSIndexSet = NSIndexSet()
    
    static let shared = ContentController(amount: 100)
    
    
    required init(amount:Int) {
        super.init()
        self.createContent(amount: amount)
        self.arrayController.content = self.items
        self.arrayController.bind(.selectionIndexes, to: self, withKeyPath: "selectionIndexes")
    }
    
    private func createContent(amount: Int) {
        for _ in 0...amount {
            let contentItem = contentItem()
            contentItem.title = Lorem.title
            contentItem.subtitle = Lorem.title
            contentItem.content = Lorem.paragraphs(50)
            items.append(contentItem)
        }
        if self.items.count > 0 {
            self.selectionIndexes = NSIndexSet(index: 0)
        }
    }
    
}
