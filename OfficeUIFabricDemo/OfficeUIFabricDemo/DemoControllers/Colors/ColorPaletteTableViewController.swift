// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

class ColorPaletteTableViewController: UITableViewController {
    
    internal var colorsType: ColorsDataSourceType = .Palette
    private var colorsDataSource: ColorsDataSource? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colorsDataSource = ColorsDataSource(type: self.colorsType)
        
        let tableView = self.view as! UITableView
        self.colorsDataSource?.setupTableView(tableView)
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.colorsDataSource!.numberOfSectionsInTableView(tableView)
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colorsDataSource!.tableView(tableView, numberOfRowsInSection: section)
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return self.colorsDataSource!.tableView(tableView, cellForRowAtIndexPath: indexPath)
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return self.colorsDataSource!.tableView(tableView, heightForHeaderInSection: section)
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return self.colorsDataSource!.tableView(tableView, viewForHeaderInSection: section)
    }
}
