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
        tableView.register(UINib(nibName: "DemoSectionHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "DemoSectionHeaderId")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.demoSections.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.demoSections[section].demos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoItemCellId", for: indexPath) as! DemoItemCell
        let demoItem = self.demoSections[(indexPath as NSIndexPath).section].demos[(indexPath as NSIndexPath).row]
        cell.itemTitle.text = demoItem.title
        return cell
    }
    
    // MARK: Header
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return DemoSectionHeaderHeight
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "DemoSectionHeaderId") as! DemoSectionHeader
        header.sectionTitle.text = self.demoSections[section].title
        return header
    }
    
    // MARK: Actions
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let segueId = self.demoSections[(indexPath as NSIndexPath).section].demos[(indexPath as NSIndexPath).row].segueId {
            self.performSegue(withIdentifier: segueId, sender: self)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == MainTableViewController.ShowColorsPaletteSegueId {
            let controller = segue.destination as! ColorPaletteTableViewController
            if let type = ColorsDataSourceType(rawValue: (tableView.indexPathForSelectedRow! as NSIndexPath).row) {
                controller.colorsType = type
            }
        }
    }
}
