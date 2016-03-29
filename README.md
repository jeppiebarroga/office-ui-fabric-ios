#[Office UI Fabric iOS Core](http://dev.office.com/fabric)

#####The UI iOS framework for building experiences for Office and Office 365.

Fabric for iOS is a library that provides the Office/Office 365 experience for the native iOS platform. It contains tokens like [Colors](#colors) and [Typography](#typography) as well as customization for native controls like the [UIButton](#uibutton) and [UILabel](#uilabel) (with more coming soon) all from the official design language used in Office and Office 365 products.

##Installation##

###Manual installation###

1. Download the latest changes from the [Office UI Fabric iOS Repository](https://github.com/OfficeDev/Office-UI-Fabric-iOS).

2. Move `OfficeUIFabricCore` folder into your project folder.

3. Drag'n'drop `OfficeUIFabricCore/OfficeUIFabricCore.xcodeproj` into your xcode project.

4. Select in Xcode your project -> your target -> General -> Embedded Binaries -> add "OfficeUIFabricCore.framework"

##Usage##

**!** *Don't forget to 'import' the library to use it:*
```swift
import OfficeUIFabricCore
```

##Tokens##

###Colors###

You can use UIColor extension to access colors from the Office color palette:
```swift
UIColor.msThemePrimary()
UIColor.msNeutralSecondaryAlt()
UIColor.msAccentBlueLight()
```
The full list of colors can be found here: [Full list of Fabric's Office/Office 365 Colors](http://dev.office.com/fabric/styles#color).

When you have a list of items where not all of them have images (for example Address book contacts, Music bands list, etc.) - you can use Hash colors algorithm to generate some "random" color:
```swift
UIColor.msHashColor("Karen Pruitt")
UIColor.msHashColor("Norris Beardsley")
UIColor.msHashColor("Proseware, Inc.")
```

###Typography###

Fabric uses several font styles: [Full list of Office 365 Typography styles](http://dev.office.com/fabric/styles#typography).
Fabric iOS uses [Apple's SanFrancisco font](https://developer.apple.com/fonts/).

Use UIFont extension to get fonts for different styles:
```swift
UIFont.msFont(style: MSFontStyle.SU)
UIFont.msFont(style: MSFontStyle.XXL)
UIFont.msFont(style: MSFontStyle.SPlus)
```
It will return font with the preferred font weight. For cases when you need different font weights use:
```swift
UIFont.msFont(style: MSFontStyle.XL, weight: MSFontWeight.Light)
UIFont.msFont(style: MSFontStyle.MPlus, weight: MSFontWeight.Semibold)
UIFont.msFont(style: MSFontStyle.L, weight: MSFontWeight.Thin)
```
**!** *Note that font weight works only for iOS 8.2+, for iOS < 8.2 Regular weight will be used.*

###Icons Guidelines###

To be consistent with other design tokens you can use recommended sizes with specific line weights:
```
TabBar Icons: 30x30pt, line weight: 1
Toolbar Icons: 28x28pt, line weight: 1
NavigationBar Icons: 20x20pt, line weight: 1
```

We recommend to use outline icons instead of solid. However, you can still use solid icons for showing different states of an icon (such as following / not following).

##Native Controls Customization##

###UIButton###

You can use `UIButtonMSExtension` to customize your `UIButton`s:

```swift
self.myButton.msStandardButton()
self.myOtherButton.msPrimaryButton()
```
![UIButton Example Image](https://raw.githubusercontent.com/OfficeDev/Office-UI-Fabric-iOS/master/DocsAssets/ButtonExample.png)

To customize the button color you can pass parameters to `msStandardButton` or `msPrimaryButton`:
```swift
self.standardButton.msStandardButton(UIColor.msAccentTeal(), disabledColor: UIColor.msAccentTealLight())

self.primaryButton.msPrimaryButton(UIColor.msAccentTeal(), selectedColor: UIColor.msAccentTealDark(), disabledColor: UIColor.msAccentTealLight())
```
You can also apply font and/or image to your button in a standard way:
```swift
self.toggleIconButton.titleLabel?.font = UIFont.msFont(MSFontStyle.L)

self.toggleIconButton.setImage(UIImage(named: "MyToggleImage"), forState: .Normal)

self.toggleIconButton.setImage(UIImage(named: "MyToggleImageSelected"), forState: .Selected)
```

###UILabel###

You can use `UILabelMSExtension` to customize your `UILabel`s:

```swift
self.myLabel.msLabel(MSFontStyle.XL, fontWeight: MSFontWeight.SemiLight, textColor: UIColor.msThemePrimary())

self.myBoldLabel.msLabel(fontWeight: MSFontWeight.Semibold)

self.mySmallLabel.msLabel(MSFontStyle.XS)

self.myColorLabel.msLabel(textColor: UIColor.msThemeSecondary())

self.myColorSmallLabel.msLabel(MSFontStyle.XS, textColor: UIColor.msThemeSecondary())
```
![UILabel Example Image](https://raw.githubusercontent.com/OfficeDev/Office-UI-Fabric-iOS/master/DocsAssets/LabelExample.png)

##Components##

###InitialsView###

InitialsView component is used to create colored box with initials from string, uses `UIColor.msHashColor(title)` to set background color.

![InitialsView Example Image](https://raw.githubusercontent.com/OfficeDev/Office-UI-Fabric-iOS/master/DocsAssets/InitialsViewExample.png)

Code:

```
self.initialsView.setInitialsFromTitle(title)
```


###LogoView###

LogoView component is used to create colored box with initials or image. Contains `InitialsView`, `UIImageView`, and logic to show both of them based on input. It can be used in a list where not every item has an image such as an Address book.

![LogoView Example Image](https://raw.githubusercontent.com/OfficeDev/Office-UI-Fabric-iOS/master/DocsAssets/LogoViewExample.png)

Code:

```
self.logoView.updateWithTitle(title)
```
or
```
self.logoView.updateWithImage(image)
```

##Contribute to Fabric

Bug reports, feature requests, and questions are posted on the [issue tracker](https://github.com/OfficeDev/Office-UI-Fabric-iOS/issues).


##Licenses

All files on the Office UI Fabric GitHub repository are subject to the MIT license. Please read the License file at the root of the project.


##Changelog
We use [GitHub Releases](https://github.com/blog/1547-release-your-software) to manage our releases, including the changelog between every release. View a complete list of additions, fixes, and changes since 1.0 on the [Releases page](https://github.com/OfficeDev/Office-UI-Fabric-iOS/releases).
