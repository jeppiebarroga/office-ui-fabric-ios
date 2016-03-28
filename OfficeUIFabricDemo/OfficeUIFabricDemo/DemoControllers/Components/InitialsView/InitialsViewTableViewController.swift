// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

class InitialsViewTableViewController: UITableViewController {

    private let initials: [String] = [
        "Rosalind Summers",
        "Karen Pruitt",
        "Norris Beardsley",
        "Nadine Terrell",
        "Naomi Wyatt",
        "Proseware, Inc.",
        "The Phone Company",
        "Wide World Importers"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.initials.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(InitialsViewItemCell), forIndexPath: indexPath) as! InitialsViewItemCell
        cell.updateWithTitle(self.initials[indexPath.row])
        return cell
    }
}
