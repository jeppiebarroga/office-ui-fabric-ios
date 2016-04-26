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
        self.defaultBoxTextField.msTextFieldFontStyles(UIFont.msFont(MSFontStyle.L, weight: MSFontWeight.Regular)!)
        self.defaultBoxTextField.msTextFieldPlaceholderText("Default Box TextField")
        
        self.defaultUnderlineTextField.msTextFieldUnderline()
        self.defaultUnderlineTextField.msTextFieldFontStyles(UIFont.msFont(MSFontStyle.L, weight: MSFontWeight.Regular)!)
        self.defaultUnderlineTextField.msTextFieldPlaceholderText("Default Underline TextField")
        
        self.customBoxTextField.msTextFieldBox(UIColor.msThemePrimary(), backgroundColor: UIColor.msThemePrimary().colorWithAlphaComponent(0.05))
        self.customBoxTextField.msTextFieldFontStyles(UIFont.msFont(MSFontStyle.MPlus)!, textColor: UIColor.msThemePrimary())
        self.customBoxTextField.msTextFieldPlaceholderText("Customized Box TextField", placeholderColor: UIColor.msThemeTertiary())
        
        self.customUnderlineTextField.msTextFieldUnderline(UIColor.msThemePrimary(), backgroundColor: UIColor.msThemePrimary().colorWithAlphaComponent(0.05))
        self.customUnderlineTextField.msTextFieldFontStyles(UIFont.msFont(MSFontStyle.MPlus)!, textColor: UIColor.msThemePrimary())
        self.customUnderlineTextField.msTextFieldPlaceholderText("Customized Underline TextField", placeholderColor: UIColor.msThemeTertiary())
        
        self.permPlaceholderBoxTextField.msTextFieldBox()
        self.permPlaceholderBoxTextField.msTextFieldFontStyles(UIFont.msFont(MSFontStyle.MPlus))
        self.permPlaceholderBoxTextField.msTextFieldPermanentPlaceholderText("First Name", font: self.permPlaceholderBoxTextField.font)
        
        self.permPlaceholderUnderlineTextField.msTextFieldUnderline()
        self.permPlaceholderUnderlineTextField.msTextFieldFontStyles(UIFont.msFont(MSFontStyle.MPlus))
        self.permPlaceholderUnderlineTextField.msTextFieldPermanentPlaceholderText("Last Name", font: self.permPlaceholderBoxTextField.font)
    }
    
    @IBAction func hideKeyboard(sender: AnyObject) {
        self.defaultBoxTextField.resignFirstResponder()
        self.defaultUnderlineTextField.resignFirstResponder()
        self.customBoxTextField.resignFirstResponder()
        self.customUnderlineTextField.resignFirstResponder()
        self.permPlaceholderBoxTextField.resignFirstResponder()
        self.permPlaceholderUnderlineTextField.resignFirstResponder()
    }
}
