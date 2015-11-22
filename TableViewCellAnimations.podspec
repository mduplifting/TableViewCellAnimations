#
# Be sure to run `pod lib lint TableViewCellAnimations.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "TableViewCellAnimations"
  s.version          = "0.1.0"
  s.summary          = "Basic animations for table view cells!"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
TableViewCellAnimations provides a subclass-able table view cell ASTableViewCell that can quickly be set to use provided animations on the cell's appearance in a table view! Available animations currently are:
-Fade In
-Slide In From Left/Right/Top/Bottom
-Flip Horizontally/Vertically
                       DESC

  s.homepage         = "https://github.com/adamsuskin/TableViewCellAnimations"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Adam Suskin" => "adam@adamsuskin.com" }
  s.source           = { :git => "https://github.com/adamsuskin/TableViewCellAnimations.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/theadamsuskin'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'TableViewCellAnimations' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
