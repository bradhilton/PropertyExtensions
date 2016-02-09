Pod::Spec.new do |s|
  s.name         = "PropertyExtensions"
  s.version      = "1.0.3"
  s.summary      = "Add Stored Properties In Swift Class Extensions"
  s.description  = <<-DESC
                    PropertyExtensions allows you to dynamically add properties to your class extensions.
                   DESC
  s.homepage     = "https://github.com/bradhilton/PropertyExtensions"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Brad Hilton" => "brad@skyvive.com" }
  s.source       = { :git => "https://github.com/bradhilton/PropertyExtensions.git", :tag => "1.0.3" }

  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"

  s.source_files  = "PropertyExtensions", "PropertyExtensions/**/*.{swift,h,m}"
  s.requires_arc = true
end
