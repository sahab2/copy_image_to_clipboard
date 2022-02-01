#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint copy_image_to_clipboard.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'copy_image_to_clipboard'
  s.version          = '0.0.1'
  s.summary          = 'A flutter plugin to copy image to clipboard'
  s.description      = <<-DESC
A flutter plugin to copy image to clipboard
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
