# Uncomment the next line to define a global platform for your project
 platform :ios, '13.0'

def commonPods
  pod 'Quick'
  pod 'Nimble'
end

target 'ViperChitChat' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  pod 'SwiftLint'
  pod 'Firebase/Analytics'
  pod 'Firebase/Auth'
  pod 'Firebase/Database'

  target 'ViperChitChatTests' do
    inherit! :search_paths
    # Pods for testing
    commonPods
  end

  target 'ViperChitChatUITests' do
    # Pods for testing
    commonPods
    pod 'EarlGrey'
  end

end
