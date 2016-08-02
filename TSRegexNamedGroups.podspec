#
#  Be sure to run `pod spec lint TSRegexNamedGroups.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = 'TSRegexNamedGroups'
  s.version      = '0.0.1'
  s.summary      = 'A simple category on NSTextCheckingResult to fill the gap because iOS and macOS don\'t currently support named capture groups!'
  s.description  = <<-DESC
			A simple category on NSTextCheckingResult to fill the gap because iOS and macOS don\'t currently support named capture groups!
                   DESC

  s.homepage     = 'https://github.com/TacchiStudios/TSRegexNamedGroups'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author             = { 'Mark McFarlane' => 'mark@tacchistudios.com' }
  s.source       = { :git => 'https://github.com/TacchiStudios/TSRegexNamedGroups.git', :tag => 'v#{spec.version}' }


  s.source_files  = 'Classes', 'Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'

  # s.public_header_files = "Classes/**/*.h"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  s.requires_arc = true

end
