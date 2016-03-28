// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

class DemoItemCell: UITableViewCell {
    @IBOutlet weak var itemTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setSelectionColor(UIColor.msNeutralTertiaryAlt())
    }
    
    private func setSelectionColor(selectionColor: UIColor) {
        let backgroundSelectionView = UIView()
        backgroundSelectionView.backgroundColor = selectionColor
        self.selectedBackgroundView = backgroundSelectionView
    }
}
