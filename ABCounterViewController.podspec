Pod::Spec.new do |s|
  s.name             = "ABCounterViewController"
  s.version          = "0.4.0"
  s.summary          = "A minimalistic counter control"
  s.description      = "A minimalistic counter control with increment and decrement functionality. Includes the ability to set a starting, maximum and minimum values as well as text attributes."
  s.homepage         = "https://github.com/abouzek/ABCounterViewController"
  s.license          = 'MIT'
  s.author           = { "abouzek" => "alan.bouzek@gmail.com" }
  s.source           = { :git => "https://github.com/abouzek/ABCounterViewController.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/alanbouzek'

  s.platform     = :ios, '7.1'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resources = ['Pod/Assets/*.xib']
  s.resource_bundles = {
    'ABCounterViewController' => ['Pod/Assets/*.png']
  }

end
