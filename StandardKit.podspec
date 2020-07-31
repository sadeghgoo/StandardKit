#
# Be sure to run `pod lib lint StandardKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'StandardKit'
  s.version          = '0.1.1'
  s.summary          = 'A library to endofrce standard style in swift.'
  s.homepage         = 'https://github.com/sadeghgoo/StandardKit.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sadeghitunes2@gmail.com' => 'sadeghitunes2@gmail.com' }
  s.source           = { :git => 'https://github.com/sadeghgoo/StandardKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'

  s.source_files = 'StandardKit/Classes/**/*'
  
  s.frameworks = 'UIKit'
end
