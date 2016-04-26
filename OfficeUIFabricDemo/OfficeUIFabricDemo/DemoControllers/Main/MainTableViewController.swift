// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

class MainTableViewController: UITableViewController {

    // MARK: List of Demos
    
    internal class DemoLinkSectionItem {
        var title: String = ""
        var demos: [DemoLinkItem] = []
        init(title: String, demos: [DemoLinkItem]) {
            self.title = title
            self.demos = demos
        }
    }
    
    internal class DemoLinkItem {
        var title: String = ""
        var segueId: String?
        init(title: String, segueId: String? = nil) {
            self.title = title
            self.segueId = segueId
        }
    }
    
    static let ShowColorsPaletteSegueId: String = "ShowColorsPaletteSegueId"
    
    let demoSections: [DemoLinkSectionItem] = [
        DemoLinkSectionItem(title: "Colors", demos: [
            DemoLinkItem(title: "Colors Palette", segueId: ShowColorsPaletteSegueId),
            DemoLinkItem(title: "Colors from Hash String", segueId: ShowColorsPaletteSegueId)
        ]),
        DemoLinkSectionItem(title: "Fonts", demos: [
            DemoLinkItem(title: "Font Styles", segueId: "ShowFontsSegueId")
        ]),
        DemoLinkSectionItem(title: "Customization", demos: [
            DemoLinkItem(title: "UIButton", segueId: "ShowButtonSegueId"),
            DemoLinkItem(title: "UILabel", segueId: "ShowLabelSegueId"),
            DemoLinkItem(title: "UITextField", segueId: "ShowTextFieldSegueId")
        ]),
        DemoLinkSectionItem(title: "Components: Common", demos: [
            DemoLinkItem(title: "InitialsView", segueId: "ShowInitialsViewSegueId"),
            DemoLinkItem(title: "LogoView", segueId: "ShowLogoViewSegueId")
        ])
    ]
    
    // MARK: - Customization
    
    let DemoSectionHeaderHeight: CGFloat = 26
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tableView = self.view as! UITableView
        tableView.registerNib(UINib(nibName: "DemoSectionHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "DemoSectionHeaderId")
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.demoSections.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.demoSections[section].demos.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("DemoItemCellId", forIndexPath: indexPath) as! DemoItemCell
        if let demoItem: DemoLinkItem = self.demoSections[indexPath.section].demos[indexPath.row] {
            cell.itemTitle.text = demoItem.title
        }
        return cell
    }
    
    // MARK: Header
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return DemoSectionHeaderHeight
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterViewWithIdentifier("DemoSectionHeaderId") as! DemoSectionHeader
        header.sectionTitle.text = self.demoSections[section].title
        return header
    }
    
    // MARK: Actions
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let segueId = self.demoSections[indexPath.section].demos[indexPath.row].segueId {
            self.performSegueWithIdentifier(segueId, sender: self)
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == MainTableViewController.ShowColorsPaletteSegueId {
            let controller = segue.destinationViewController as! ColorPaletteTableViewController
            if let type = ColorsDataSourceType(rawValue: tableView.indexPathForSelectedRow!.row) {
                controller.colorsType = type
            }
        }
    }
}
