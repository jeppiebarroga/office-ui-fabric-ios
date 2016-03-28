// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

class LogoViewTableViewController: UITableViewController {

    private let logoViewItems: [Any?] = [
        "Rosalind Summers",
        ("Norris Beardsley", UIImage(named: "OfficeUIFabric.Person")!),
        "Nadine Terrell",
        ("Test Image", UIImage(named: "OfficeUIFabric.TestImage")!)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.logoViewItems.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(LogoViewItemCell), forIndexPath: indexPath) as! LogoViewItemCell
        if let (title, image) = self.logoViewItems[indexPath.row] as? (String, UIImage) {
            cell.logoView.updateWithImage(image)
            cell.titleLabel.text = title
        }
        if let title = self.logoViewItems[indexPath.row] as? String {
            cell.logoView.updateWithTitle(title)
            cell.titleLabel.text = title
        }
        return cell
    }
}
