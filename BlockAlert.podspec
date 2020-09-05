Pod::Spec.new do |s|
  s.name             = 'BlockAlert'
  s.version          = '1.1.0'
  s.summary          = 'Alert controller extension for convenience.'
  s.description      = <<-DESC
  BlockAlert helps you initializing and presenting alert controller with shorter codes.
                       DESC

  s.homepage         = 'https://github.com/mznu/BlockAlert'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Mujun Kim' => 'me@mujun.kim' }
  s.source           = { :git => 'https://github.com/mznu/BlockAlert.git', :tag => s.version.to_s }

  s.platform = :ios
  s.ios.deployment_target = '8.0'
  s.source_files = 'BlockAlert/Classes/**/*'
  s.ios.framework = 'UIKit'
  s.swift_version = '5.0'
end
