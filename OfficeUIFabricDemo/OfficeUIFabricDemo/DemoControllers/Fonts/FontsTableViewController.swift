// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit
import OfficeUIFabricCore

class FontsTableViewController: UITableViewController {

    internal class FontItem {
        var style: String = ""
        var font: UIFont = UIFont()
        var size: Int = 0
        var weight: String = ""
        init(style: String, font: UIFont, size: Int, weight: String) {
            self.style = style
            self.font = font
            self.size = size
            self.weight = weight
        }
    }
    
    private let fontItems: [FontItem] = [
        FontItem(style: "SU",   font: UIFont.msFont(style: MSFontStyle.SU)!,   size: 42, weight: "Light"),
        FontItem(style: "XXL",  font: UIFont.msFont(style: MSFontStyle.XXL)!,  size: 28, weight: "Light"),
        FontItem(style: "XL",   font: UIFont.msFont(style: MSFontStyle.XL)!,   size: 21, weight: "Light"),
        FontItem(style: "L",    font: UIFont.msFont(style: MSFontStyle.L)!,    size: 17, weight: "SemiLight"),
        FontItem(style: "MPlus",font: UIFont.msFont(style: MSFontStyle.MPlus)!,size: 15, weight: "Regular"),
        FontItem(style: "M",    font: UIFont.msFont(style: MSFontStyle.M)!,    size: 14, weight: "Regular"),
        FontItem(style: "SPlus",font: UIFont.msFont(style: MSFontStyle.SPlus)!,size: 13, weight: "Regular"),
        FontItem(style: "S",    font: UIFont.msFont(style: MSFontStyle.S)!,    size: 12, weight: "Regular"),
        FontItem(style: "XS",   font: UIFont.msFont(style: MSFontStyle.XS)!,   size: 11, weight: "Regular"),
        FontItem(style: "MI",   font: UIFont.msFont(style: MSFontStyle.MI)!,   size: 10, weight: "Semibold")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.fontItems.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FontItemCellId", for: indexPath) as! FontItemCell
        
        let fontItem = self.fontItems[(indexPath as NSIndexPath).row]
        
        cell.styleLabel.text = fontItem.style
        cell.sizeLabel.text = "\(fontItem.size)pt"
        cell.fontWeightLabel.text = fontItem.weight
        cell.previewLabel.font = fontItem.font

        return cell
    }
}
