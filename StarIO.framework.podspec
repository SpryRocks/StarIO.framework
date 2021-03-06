Pod::Spec.new do |s|
s.name             = 'StarIO'
s.version          = '0.0.1'
s.summary          = 'StarIO'

s.homepage         = 'https://github.com/SpryRocks/StarIO.framework'
s.author           = { 'username' => 'dummyuser@abc.com' }
s.source           = { :git => 'https://github.com/SpryRocks/StarIO.framework.git', :tag => s.version.to_s }
s.ios.deployment_target = '10.0'
s.source_files = 'Headers/*.h'
s.frameworks = 'StarIO'

s.subspec 'starmicronics' do |ss|
    ss.source_files = 'Headers/starmicronics'
#     ss.frameworks = 'frameworks'
    ss.subspec 'platform' do |sss|
        sss.source_files = 'Headers/starmicronics/platform'
    end
end

end
