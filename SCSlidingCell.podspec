#
#  Be sure to run `pod spec lint SCSlidingCell.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/

Pod::Spec.new do |s|

  s.name         = "SCSlidingCell"
  s.version      = "0.5.0.1"
  s.summary      = "Provide sliding UITableView cells like in FB app. "

  s.homepage     = "https://github.com/alexeybondarenko/SCSlidingCell"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author             = { "Alexey Bondarenko" => "alexeybondarenko@me.com" }
  s.social_media_url = "https://twitter.com/BonOleksiy"

  s.platform     = :ios, '5.0'

  s.source       = { :git => "https://github.com/alexeybondarenko/SCSlidingCell.git", :tag => "0.5.0.1" }

  s.source_files  = 'SlidingCell/SlidingCell/*.{h,m}'

  s.requires_arc = true

end
