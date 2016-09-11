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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.logoViewItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: LogoViewItemCell.self), for: indexPath) as! LogoViewItemCell
        if let (title, image) = self.logoViewItems[(indexPath as NSIndexPath).row] as? (String, UIImage) {
            cell.logoView.updateWithImage(image: image)
            cell.titleLabel.text = title
        }
        if let title = self.logoViewItems[(indexPath as NSIndexPath).row] as? String {
            cell.logoView.updateWithTitle(title: title)
            cell.titleLabel.text = title
        }
        return cell
    }
}
