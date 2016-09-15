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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.initials.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: InitialsViewItemCell.self), for: indexPath) as! InitialsViewItemCell
        cell.updateWithTitle(title: self.initials[(indexPath as NSIndexPath).row])
        return cell
    }
}
