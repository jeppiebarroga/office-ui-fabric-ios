// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit
import OfficeUIFabricCore

class InitialsViewItemCell: UITableViewCell {
    @IBOutlet weak var initialsView: InitialsView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func updateWithTitle(title: String) {
        self.initialsView.setInitialsFromTitle(title)
        self.titleLabel.text = title
    }
}
