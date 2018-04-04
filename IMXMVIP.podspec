Pod::Spec.new do |s|
  s.name         = "IMXMVIP"
  s.version      = "1.0.0"
  s.summary      = "MVIP:A extend pattern of MVP."
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.homepage     = "https://github.com/PanZhow/IMXMVIP.git"
  s.author             = { "zhoupanpan" => "2331838272@qq.com" }
  s.source       = { :git => "https://github.com/PanZhow/IMXMVIP.git", :tag => "#{s.version}" }
  s.requires_arc = true
  s.platform     = :ios, '8.0'

  s.source_files  = 'IMXMVIP/MVIP/*.{h,m}'
  s.public_header_files = [
    'IMXMVIP/MVIP/*.{h}'
  ]

  #s.subspec 'Model' do |m|
  #end

  #s.subspec 'View' do |v|
  #end

  s.subspec 'Interactor' do |i|
  i.source_files  = 'IMXMVIP/MVIP/Interactor/*.{h,m}'
  i.public_header_files = [
    'IMXMVIP/MVIP/Interactor/*.{h}'
  ]
  end

  s.subspec 'Presenter' do |p|
  p.source_files  = 'IMXMVIP/MVIP/Presenter/*.{h,m}'
  p.public_header_files = [
    'IMXMVIP/MVIP/Presenter/*.{h}'
  ]
  end
end
