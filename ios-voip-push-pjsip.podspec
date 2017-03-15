#
# Be sure to run `pod lib lint pjsip-ios.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ios-voip-push-pjsip"
  s.version          = "0.1"
  s.summary          = "PJSIP for ios + ssl"
  s.description      = <<-DESC
                       pjsip build to support voip push
                       DESC
  s.homepage         = "https://github.com/mrga/pjsip-ios.git"
  s.license          = 'MIT'
  s.author           = { "mrga" => "mrganic@gmail.com" }
  s.source           = { :git => "https://github.com/mrga/pjsip-ios.git", :tag => s.version.to_s }


  s.platform     = :ios, '9.0'
  s.requires_arc = false

  s.public_header_files = 'Pod/pjsip-include/**'
  s.preserve_paths = 'Pod/pjsip-include/**/**/*{h,hpp}'
  s.vendored_libraries = 'Pod/pjsip-lib/*.a'
  s.frameworks = 'CFNetwork', 'AudioToolbox', 'AVFoundation'

  s.header_mappings_dir = 'Pod'

  s.xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
    'HEADER_SEARCH_PATHS'  => '$(inherited) $(PODS_ROOT)/pjsip-ios/Pod/pjsip-include'
  }
end