Pod::Spec.new do |spec|

  spec.name                     = "iOS_LWAIGCKit"
  spec.version                  = "1.0.0"
  spec.summary                  = "LWAIGCKit人工智能SDK for iOS"
  spec.description              = <<-DESC
                                  iOS_LWAIGCKit 为 iOS 应用程序提供AI功能。
                                  DESC
  spec.homepage                 = "https://github.com/wsr1949/iOS_LWAIGCKit/tree/#{spec.version}/iOS_LWAIGCKit"
  spec.license                  = 'MIT'
  spec.author                   = { "wsr1949" => "921903719@qq.com" }
  spec.social_media_url         = 'https://github.com/wsr1949'
  spec.platform                 = :ios, '14.0'
  spec.source                   = { :git => "https://github.com/wsr1949/iOS_LWAIGCKit.git", :tag => spec.version.to_s }
  spec.documentation_url        = 'https://github.com/wsr1949/iOS_LWAIGCKit/blob/main/README.md'
  spec.requires_arc             = true
  spec.frameworks               = 'Foundation'
  spec.vendored_frameworks      = 'XCFramework/iOS_LWAIGCKit.xcframework'

  spec.dependency 'MJExtension'
  spec.dependency 'SSZipArchive'
  spec.dependency 'SocketRocket'
  
end
