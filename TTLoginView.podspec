Pod::Spec.new do |s|
  s.name          = "TTLoginView"
  s.version       = "0.0.1"
  s.summary       = "Un pequeño ejemplo de un formulario Login."
  s.homepage      = "https://github.com/TuteTipito/TTLoginView"
  s.license       = { :type => "MIT", :file => "/Users/matiasspinelli/Proyects/TTLoginView/LICENSE" }
  s.author        = { "Matias Spinelli" => "matias.spinelli@gmail.com" }
  s.source        = { :git => "https://github.com/TuteTipito/TTLoginView.git", :tag => "#{s.version}" }
  s.platform	  = :ios
  s.ios.deployment_target = "12.1"
  s.requires_arc  = true
  s.source_files  = "TTLoginView/**/*"
  s.resources     = "TTLoginView/**/*"
  s.framework     = "UIKit"
  s.swift_version = '4.2'
end
