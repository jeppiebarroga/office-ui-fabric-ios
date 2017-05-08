# [Office UI Fabric iOS Core](http://dev.office.com/fabric)

##### The iOS UI framework for building experiences for Office and Office 365.

Fabric for iOS is a library that provides the Office UI experience for the native iOS platform. It contains tokens like [Colors](#colors) and [Typography](#typography), as well as customization for native controls like the [UIButton](#uibutton) and [UILabel](#uilabel) (with more coming soon), all from the official design language used in Office and Office 365 products.

## Install and use Office UI Fabric

### 1. Using CocoaPods

```ruby
pod 'OfficeUIFabricCore', '~> 0.1.6’
```

### 2. Manual installation

2.1. Download the latest changes from the [Office UI Fabric iOS](https://github.com/OfficeDev/Office-UI-Fabric-iOS) repository.

2.2. Move the `OfficeUIFabricCore` folder into your project folder.

2.3. Drag and drop `OfficeUIFabricCore/OfficeUIFabricCore.xcodeproj` into your xcode project.

2.4. Select in Xcode **your project** -> **your target** -> **General** -> **Embedded Binaries** -> **add "OfficeUIFabricCore.framework"**.

Import the library to use it:

```swift
import OfficeUIFabricCore
```

## Tokens

### Colors

You can use the `UIColor` extension to access colors from the Office color palette:

```swift
UIColor.msThemePrimary()
UIColor.msNeutralSecondaryAlt()
UIColor.msAccentBlueLight()

```

For the full list of colors, see the [Styles page](http://dev.office.com/fabric/styles#color) on the Fabric website.

When you have a list of items that don't all have images (for example, address book contacts or a list of music bands), you can use the `HashColor` algorithm to generate random colors:

```swift
UIColor.msHashColor("Karen Pruitt")
UIColor.msHashColor("Norris Beardsley")
UIColor.msHashColor("Proseware, Inc.")
```

### Typography

Fabric uses several font styles. You can see the full list on the [Typography styles](http://dev.office.com/fabric/styles#typography) page of the Fabric website.

Fabric iOS uses [Apple's SanFrancisco font](https://developer.apple.com/fonts/).

Use the `UIFont` extension to get fonts for different styles:

```swift
UIFont.msFont(style: MSFontStyle.SU)
UIFont.msFont(style: MSFontStyle.XXL)
UIFont.msFont(style: MSFontStyle.SPlus)
```

The font returned will be the preferred font weight. You can also specify a different font weight:

```swift
UIFont.msFont(style: MSFontStyle.XL, weight: MSFontWeight.Light)
UIFont.msFont(style: MSFontStyle.MPlus, weight: MSFontWeight.Semibold)
UIFont.msFont(style: MSFontStyle.L, weight: MSFontWeight.Thin)
```
>Note: The font weight works only for iOS 8.2 and later. For earlier versions of iOS, the font will be regular weight.

### Icons

To be consistent with other design tokens, you can use recommended icon sizes with specific line weights:

```
TabBar Icons: 30x30pt, line weight: 1
Toolbar Icons: 28x28pt, line weight: 1
NavigationBar Icons: 20x20pt, line weight: 1
```

In general, we recommend that you use outline icons rather than solid icons. Use solid icons for different icon states (such as following/not following).

## Native control customization

### UIButton

You can use the `UIButtonMS` extension to customize your UI buttons:

```swift
self.myButton.msStandardButton()
self.myOtherButton.msPrimaryButton()
```

![Image showing three standard and three primary UIButton colors](https://raw.githubusercontent.com/OfficeDev/Office-UI-Fabric-iOS/master/DocsAssets/ButtonExample.png)

To customize the button color, you can pass parameters to `msStandardButton` or `msPrimaryButton`:

```swift
self.standardButton.msStandardButton(UIColor.msAccentTeal(), disabledColor: UIColor.msAccentTealLight())

self.primaryButton.msPrimaryButton(UIColor.msAccentTeal(), selectedColor: UIColor.msAccentTealDark(), disabledColor: UIColor.msAccentTealLight())
```
You can also apply a font and/or an image to your button in a standard way:

```swift
self.toggleIconButton.titleLabel?.font = UIFont.msFont(MSFontStyle.L)

self.toggleIconButton.setImage(UIImage(named: "MyToggleImage"), forState: .Normal)

self.toggleIconButton.setImage(UIImage(named: "MyToggleImageSelected"), forState: .Selected)
```

### UILabel

You can use the `UILabelMS` extension to customize your UI labels:

```swift
self.myLabel.msLabel(MSFontStyle.XL, fontWeight: MSFontWeight.SemiLight, textColor: UIColor.msThemePrimary())

self.myBoldLabel.msLabel(fontWeight: MSFontWeight.Semibold)

self.mySmallLabel.msLabel(MSFontStyle.XS)

self.myColorLabel.msLabel(textColor: UIColor.msThemeSecondary())

self.myColorSmallLabel.msLabel(MSFontStyle.XS, textColor: UIColor.msThemeSecondary())
```

![Image showing large, medium, and small UI labels in several colors](https://raw.githubusercontent.com/OfficeDev/Office-UI-Fabric-iOS/master/DocsAssets/LabelExample.png)

### UITextField

You can use `UITextFieldMSExtension` to customize `UITextField`s in your project.

![Image showing customized text fields with box and underline styles](https://raw.githubusercontent.com/OfficeDev/Office-UI-Fabric-iOS/master/DocsAssets/TextFieldExample.png)

`UITextField` customization consist of three components:

* TextField Form
* Text Style
* Placeholder Text Style

#### 1. Define the form:

You can use `Box` or `Underline` style for your text field:
```swift
self.myTextField.msTextFieldBox()

self.myTextField.msTextFieldBox(borderColor: UIColor, backgroundColor: UIColor, leftPadding: CGFloat)
```
or
```swift
self.myTextField.msTextFieldUnderline()

self.myTextField.msTextFieldUnderline(borderColor: UIColor, backgroundColor: UIColor, leftPadding: CGFloat)
```

#### 2. Text Style:

To apply text style to your `UITextField`:

```swift
self.myTextField.msTextFieldFontStyles()

self.myTextField.msTextFieldFontStyles(style: MSFontStyle, textColor: UIColor)

self.myTextField.msTextFieldFontStyles(style: MSFontStyle, fontWeight: MSFontWeight, textColor: UIColor)

self.myTextField.msTextFieldFontStyles(font: UIFont?, textColor: UIColor)
```

#### 3. Placeholder Text Style:

You can use either "Placeholder text" in your `UITextField` or permanent "placeholder":

```swift
// Placeholder text
self.myTextField.msTextFieldPlaceholderText(text: String)

self.myTextField.msTextFieldPlaceholderText(text: String, placeholderColor: UIColor, font: UIFont?)

// Permanent placeholder
self.myTextField.msTextFieldPermanentPlaceholderText(text: String)

self.myTextField.msTextFieldPermanentPlaceholderText(text: String, placeholderColor: UIColor, font: UIFont?, padding: CGFloat)
```

## Components

### InitialsView

Use the InitialsView component to create a colored box with initials from a string:

```
self.initialsView.setInitialsFromTitle(title)
```

Use `UIColor.msHashColor(title)` to set the background color.

![Image that shows two InitialsView components with initials from the string in different colors](https://raw.githubusercontent.com/OfficeDev/Office-UI-Fabric-iOS/master/DocsAssets/InitialsViewExample.png)

### LogoView

Use the LogoView component to create a colored box with initials or an image. This component contains `InitialsView`, `UIImageView`, and logic to show both of them based on input. Use this component when you have a list of items that don't all have images such as an address book.


```
self.logoView.updateWithTitle(title)
```

or

```
self.logoView.updateWithImage(image)
```

![Image that shows a LogoView component with an InitialsView and a UIImageView](https://raw.githubusercontent.com/OfficeDev/Office-UI-Fabric-iOS/master/DocsAssets/LogoViewExample.png)


## Contribute to Fabric

Post bug reports, feature requests, and questions on the [issue tracker](https://github.com/OfficeDev/Office-UI-Fabric-iOS/issues).


## Licenses

All files on the Office UI Fabric GitHub repository are subject to the MIT license. Please read the License file at the root of the project.


## Changelog
We use [GitHub Releases](https://github.com/blog/1547-release-your-software) to manage our releases, including the changelog between every release. You'll find a complete list of additions, fixes, and changes since the 1.0 release on the [Releases page](https://github.com/OfficeDev/Office-UI-Fabric-iOS/releases).

- - -

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
