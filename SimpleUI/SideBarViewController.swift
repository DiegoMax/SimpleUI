//
//  SideBarViewController.swift
//  AnimatedTableText
//
//  Created by Diego Massanti on 27/11/2022.
//

import Cocoa

class SideBarViewController: NSViewController, NSTableViewDelegate {
    
    @IBOutlet var tableView:NSTableView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        tableView?.bind(.content, to: ContentController.shared.arrayController, withKeyPath: "arrangedObjects")
        tableView?.bind(.selectionIndexes, to: ContentController.shared, withKeyPath: "selectionIndexes")
        if let sidebarCellNib = NSNib(nibNamed: NSNib.Name("SideBarTableCellView"), bundle: Bundle.main) {
            tableView?.register(sidebarCellNib, forIdentifier: NSUserInterfaceItemIdentifier("DMSidebarCellIdentifier"))
        }
    }
    override func viewWillAppear() {
        super.viewWillAppear()

    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView? {
        return tableView.makeView(withIdentifier: NSUserInterfaceItemIdentifier("DMSidebarCellIdentifier"), owner: ContentController.shared.items[row])
    }
    
    @IBAction func toggleSubtitles(_ sender:NSToolbarItem) {
        UISourceOfTruth.shared.toggleSubtitlesVisible()
    }

}
