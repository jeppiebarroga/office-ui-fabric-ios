Pod::Spec.new do |s|
  s.name         = "OfficeUIFabricCore"
  s.version      = "0.1.6"
  s.summary      = "The iOS UI framework for building experiences for Office and Office 365"
  s.description  = <<-DESC
                     Fabric for iOS is a library that provides the Office UI experience for the native iOS platform. It contains tokens like Colors and Typography, as well as customization for native controls. All from the official design language used in Office and Office 365 products.
                   DESC
  s.homepage     = "https://github.com/OfficeDev/Office-UI-Fabric-iOS"
  s.documentation_url = "http://dev.office.com/fabric/styles"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "Andrew Cherkashyn" => "v-cheand@microsoft.com" }

  s.platform     = :ios, "8.0"
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source       = { :git => "https://github.com/OfficeDev/Office-UI-Fabric-iOS.git", :tag => s.version.to_s }
  s.source_files = "OfficeUIFabricCore/OfficeUIFabricCore/{Core,Components,Customization}/**/*"
  s.framework    = "UIKit"
end
