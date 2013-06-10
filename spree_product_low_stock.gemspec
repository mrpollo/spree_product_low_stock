# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_product_low_stock'
  s.version     = '1.1'
  s.summary     = 'Add variant specific low level threshold'
  s.description = 'Sometimes your stock needs to have different low stock threshold, this will let you add a threshold for each variant on your site, or follow the default if no value is entered'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Ramón Roche'
  s.email     = 'mrpollo@gmail.com'
  s.homepage  = 'https://github.com/mrpollo/spree_product_low_stock'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2'

  s.add_development_dependency 'capybara', '~> 1.1.2'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'factory_girl', '~> 2.6.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.9'
  s.add_development_dependency 'sass-rails'
end
