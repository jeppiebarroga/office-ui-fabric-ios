// Copyright (c) Microsoft Corporation. All rights reserved. Licensed under the MIT license. See LICENSE in the project root for license information.

import UIKit
import OfficeUIFabricCore

class TextFieldDemoViewController: UIViewController {
    @IBOutlet weak var defaultBoxTextField: UITextField!
    @IBOutlet weak var defaultUnderlineTextField: UITextField!

    @IBOutlet weak var customBoxTextField: UITextField!
    @IBOutlet weak var customUnderlineTextField: UITextField!
    
    @IBOutlet weak var permPlaceholderBoxTextField: UITextField!
    @IBOutlet weak var permPlaceholderUnderlineTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.defaultBoxTextField.msTextFieldBox()
        self.defaultBoxTextField.msTextFieldFontStyles(font: UIFont.msFont(style: MSFontStyle.L, weight: MSFontWeight.Regular)!)
        self.defaultBoxTextField.msTextFieldPlaceholderText(text: "Default Box TextField")
        
        self.defaultUnderlineTextField.msTextFieldUnderline()
        self.defaultUnderlineTextField.msTextFieldFontStyles(font: UIFont.msFont(style: MSFontStyle.L, weight: MSFontWeight.Regular)!)
        self.defaultUnderlineTextField.msTextFieldPlaceholderText(text: "Default Underline TextField")
        
        self.customBoxTextField.msTextFieldBox(borderColor: UIColor.msThemePrimary(), backgroundColor: UIColor.msThemePrimary().withAlphaComponent(0.05))
        self.customBoxTextField.msTextFieldFontStyles(font: UIFont.msFont(style: MSFontStyle.MPlus)!, textColor: UIColor.msThemePrimary())
        self.customBoxTextField.msTextFieldPlaceholderText(text: "Customized Box TextField", placeholderColor: UIColor.msThemeTertiary())
        
        self.customUnderlineTextField.msTextFieldUnderline(borderColor: UIColor.msThemePrimary(), backgroundColor: UIColor.msThemePrimary().withAlphaComponent(0.05))
        self.customUnderlineTextField.msTextFieldFontStyles(font: UIFont.msFont(style: MSFontStyle.MPlus)!, textColor: UIColor.msThemePrimary())
        self.customUnderlineTextField.msTextFieldPlaceholderText(text: "Customized Underline TextField", placeholderColor: UIColor.msThemeTertiary())
        
        self.permPlaceholderBoxTextField.msTextFieldBox()
        self.permPlaceholderBoxTextField.msTextFieldFontStyles(font: UIFont.msFont(style: MSFontStyle.MPlus))
        self.permPlaceholderBoxTextField.msTextFieldPermanentPlaceholderText(text: "First Name", font: self.permPlaceholderBoxTextField.font)
        
        self.permPlaceholderUnderlineTextField.msTextFieldUnderline()
        self.permPlaceholderUnderlineTextField.msTextFieldFontStyles(font: UIFont.msFont(style: MSFontStyle.MPlus))
        self.permPlaceholderUnderlineTextField.msTextFieldPermanentPlaceholderText(text: "Last Name", font: self.permPlaceholderBoxTextField.font)
    }
    
    @IBAction func hideKeyboard(_ sender: AnyObject) {
        self.defaultBoxTextField.resignFirstResponder()
        self.defaultUnderlineTextField.resignFirstResponder()
        self.customBoxTextField.resignFirstResponder()
        self.customUnderlineTextField.resignFirstResponder()
        self.permPlaceholderBoxTextField.resignFirstResponder()
        self.permPlaceholderUnderlineTextField.resignFirstResponder()
    }
}
