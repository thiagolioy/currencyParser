#
# Be sure to run `pod lib lint currencyParser.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "currencyParser"
  s.version          = "0.1.0"
  s.summary          = "Parse arguments into currency formmated strings"
  s.homepage         = "https://github.com/thiagolioy/currencyParser"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "thiagolioy" => "lioyufrj@gmail.com" }
  s.source           = { :git => "https://github.com/thiagolioy/currencyParser.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/tplioy'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'currencyParser' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/CPCurrencyParser.h'

end
