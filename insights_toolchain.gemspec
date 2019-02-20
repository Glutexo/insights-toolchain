Gem::Specification.new do |s|
  s.name        = 'insights_toolchain'
  s.version     = '0.0.1'
  s.executables = ['insights-client-collect']
  s.date        = '2019-02-20'
  s.summary     = "Insights Toolchain"
  s.description = 'A set of tools that makes a developer life with Insights easier'
  s.authors     = ['Glutexo']
  s.email       = 'glutexo@icloud.com'
  s.files       = [
    'lib/insights_toolchain.rb',
    'lib/insights_toolchain/client.rb',
    'lib/insights_toolchain/helpers.rb',
  ]
  s.homepage    = 'http://rubygems.org/gems/insights_toolchain'
  s.license     = 'MIT'
end
