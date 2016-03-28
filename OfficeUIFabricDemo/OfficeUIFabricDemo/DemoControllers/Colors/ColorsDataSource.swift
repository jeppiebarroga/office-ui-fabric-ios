// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit

internal enum ColorsDataSourceType : Int {
    case Palette
    case Hash
}

class ColorsDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Colors List
    
    internal class ColorSectionItem {
        var title: String = ""
        var colors: [ColorItem] = []
        init(title: String, colors: [ColorItem]) {
            self.title = title
            self.colors = colors
        }
    }
    
    internal class ColorItem {
        var title: String = ""
        var color: UIColor = UIColor()
        var hex: String = ""
        init(title: String, color: UIColor, hex: String) {
            self.title = title
            self.color = color
            self.hex = hex
        }
    }
    
    private var colorSections: [ColorSectionItem] = []
    
    internal init(type: ColorsDataSourceType = .Palette) {
        super.init()
        
        switch type {
        case .Palette:
            self.colorSections = self.colorsFromPalette()
        case .Hash:
            self.colorSections = self.colorsWithHash()
        }
    }
    
    private func colorsFromPalette() -> [ColorSectionItem] {
        return [
            ColorSectionItem(title: "Theme Colors", colors: [
                ColorItem(title: "Theme Darker", color: UIColor.msThemeDarker(), hex: "#004578"),
                ColorItem(title: "Theme Dark", color: UIColor.msThemeDark(), hex: "#005a9e"),
                ColorItem(title: "Theme Dark Alt", color: UIColor.msThemeDarkAlt(), hex: "#106ebe"),
                ColorItem(title: "Theme Primary", color: UIColor.msThemePrimary(), hex: "#0078d7"),
                ColorItem(title: "Theme Secondary", color: UIColor.msThemeSecondary(), hex: "#2b88d8"),
                ColorItem(title: "Theme Tertiary", color: UIColor.msThemeTertiary(), hex: "#71afe5"),
                ColorItem(title: "Theme Light", color: UIColor.msThemeLight(), hex: "#c7e0f4"),
                ColorItem(title: "Theme Lighter", color: UIColor.msThemeLighter(), hex: "#deecf9"),
                ColorItem(title: "Theme Lighter Alt", color: UIColor.msThemeLighterAlt(), hex: "#eff6fc")
            ]),
            ColorSectionItem(title: "Neutral Colors", colors: [
                ColorItem(title: "Neutral Black", color: UIColor.msNeutralBlack(), hex: "#000000"),
                ColorItem(title: "Neutral Dark", color: UIColor.msNeutralDark(), hex: "#212121"),
                ColorItem(title: "Neutral Primary", color: UIColor.msNeutralPrimary(), hex: "#333333"),
                ColorItem(title: "Neutral Secondary", color: UIColor.msNeutralSecondary(), hex: "#666666"),
                ColorItem(title: "Neutral Secondary Alt", color: UIColor.msNeutralSecondaryAlt(), hex: "#767676"),
                ColorItem(title: "Neutral Tertiary", color: UIColor.msNeutralTertiary(), hex: "#a6a6a6"),
                ColorItem(title: "Neutral Tertiary Alt", color: UIColor.msNeutralTertiaryAlt(), hex: "#c8c8c8"),
                ColorItem(title: "Neutral Light", color: UIColor.msNeutralLight(), hex: "#eaeaea"),
                ColorItem(title: "Neutral Lighter", color: UIColor.msNeutralLighter(), hex: "#f4f4f4"),
                ColorItem(title: "Neutral Lighter Alt", color: UIColor.msNeutralLighterAlt(), hex: "#f8f8f8"),
                ColorItem(title: "Neutral White", color: UIColor.msNeutralWhite(), hex: "#ffffff")
            ]),
            ColorSectionItem(title: "Accent Colors", colors: [
                ColorItem(title: "Accent Yellow", color: UIColor.msAccentYellow(), hex: "#ffb900"),
                ColorItem(title: "Accent Yellow Light", color: UIColor.msAccentYellowLight(), hex: "#fff100"),
                ColorItem(title: "Accent Orange", color: UIColor.msAccentOrange(), hex: "#d83b01"),
                ColorItem(title: "Accent Orange Light", color: UIColor.msAccentOrangeLight(), hex: "#ff8c00"),
                ColorItem(title: "Accent Red Dark", color: UIColor.msAccentRedDark(), hex: "#a80000"),
                ColorItem(title: "Accent Red", color: UIColor.msAccentRed(), hex: "#e81123"),
                ColorItem(title: "Accent Magenta Dark", color: UIColor.msAccentMagentaDark(), hex: "#5c005c"),
                ColorItem(title: "Accent Magenta", color: UIColor.msAccentMagenta(), hex: "#b4009e"),
                ColorItem(title: "Accent Magenta Light", color: UIColor.msAccentMagentaLight(), hex: "#e3008c"),
                ColorItem(title: "Accent Purple Dark", color: UIColor.msAccentPurpleDark(), hex: "#32145a"),
                ColorItem(title: "Accent Purple", color: UIColor.msAccentPurple(), hex: "#5c2d91"),
                ColorItem(title: "Accent Purple Light", color: UIColor.msAccentPurpleLight(), hex: "#b4a0ff"),
                ColorItem(title: "Accent Blue Dark", color: UIColor.msAccentBlueDark(), hex: "#002050"),
                ColorItem(title: "Accent Blue Mid", color: UIColor.msAccentBlueMid(), hex: "#00188f"),
                ColorItem(title: "Accent Blue", color: UIColor.msAccentBlue(), hex: "#0078d7"),
                ColorItem(title: "Accent Blue Light", color: UIColor.msAccentBlueLight(), hex: "#00bcf2"),
                ColorItem(title: "Accent Teal Dark", color: UIColor.msAccentTealDark(), hex: "#004b50"),
                ColorItem(title: "Accent Teal", color: UIColor.msAccentTeal(), hex: "#008272"),
                ColorItem(title: "Accent Teal Light", color: UIColor.msAccentTealLight(), hex: "#00b294"),
                ColorItem(title: "Accent Green Dark", color: UIColor.msAccentGreenDark(), hex: "#004b1c"),
                ColorItem(title: "Accent Green", color: UIColor.msAccentGreen(), hex: "#107c10"),
                ColorItem(title: "Accent Green Light", color: UIColor.msAccentGreenLight(), hex: "#bad80a")
            ])
        ]
    }
    
    private func colorsWithHash() -> [ColorSectionItem] {
        return [
            ColorSectionItem(title: "Hash Generated Colors", colors: [
                ColorItem(title: "Hash color: \"Rosalind Summers\"", color: UIColor.msHashColor("Rosalind Summers"), hex: "\"Rosalind Summers\""),
                ColorItem(title: "Hash color: \"Karen Pruitt\"", color: UIColor.msHashColor("Karen Pruitt"), hex: "\"Karen Pruitt\""),
                ColorItem(title: "Hash color: \"Norris Beardsley\"", color: UIColor.msHashColor("Norris Beardsley"), hex: "\"Norris Beardsley\""),
                ColorItem(title: "Hash color: \"Nadine Terrell\"", color: UIColor.msHashColor("Nadine Terrell"), hex: "\"Nadine Terrell\""),
                ColorItem(title: "Hash color: \"Naomi Wyatt\"", color: UIColor.msHashColor("Naomi Wyatt"), hex: "\"Naomi Wyatt\""),
                ColorItem(title: "Hash color: \"Proseware, Inc.\"", color: UIColor.msHashColor("Proseware, Inc."), hex: "\"Proseware, Inc.\""),
                ColorItem(title: "Hash color: \"VanArsdel, Ltd.\"", color: UIColor.msHashColor("VanArsdel, Ltd."), hex: "\"VanArsdel, Ltd.\""),
                ColorItem(title: "Hash color: \"Wide World Importers\"", color: UIColor.msHashColor("Wide World Importers"), hex: "\"Wide World Importers\"")
            ])
        ]
    }
    
    // MARK: SetUp
    
    let ColorsSectionHeaderId = "ColorsSectionHeaderId"
    
    internal func setupTableView(tableView: UITableView) {
        tableView.registerNib(UINib(nibName: "ColorsSectionHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: ColorsSectionHeaderId)
    }
    
    // MARK: UITableViewDataSource implementation
    
    internal func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return self.colorSections.count
    }
    
    internal func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.colorSections[section].colors.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ColorItemCellId", forIndexPath: indexPath) as! ColorItemCell
        let colorItem = self.colorSections[indexPath.section].colors[indexPath.row]
        
        cell.titleLabel.text = colorItem.title
        cell.colorView.backgroundColor = colorItem.color
        cell.hexLabel.text = colorItem.hex
        
        return cell
    }
    
    // MARK: Header
    
    let ColorsSectionHeaderHeight: CGFloat = 26
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return ColorsSectionHeaderHeight
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterViewWithIdentifier("ColorsSectionHeaderId") as! ColorsSectionHeader
        header.sectionTitle.text = self.colorSections[section].title
        header.bgView.backgroundColor = self.colorSections[section].colors.first?.color
        return header
    }
}
