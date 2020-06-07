# frozen_string_literal: true

$:.push File.expand_path('lib', __dir__)
require 'solidus_mercado_pago/version'

Gem::Specification.new do |s|
  s.name = 'solidus_mercado_pago'
  s.version     = SolidusMercadoPago::VERSION
  s.summary     = 'Solidus plugin to integrate Mercado Pago'
  s.description = 'Integrates Mercado Pago with Solidus'
  s.author      = 'Ngelx'
  s.files       = `git ls-files -- {app,config,lib,spec,db}/*`.split("\n")
  s.test_files  = `git ls-files -- {spec}/*`.split("\n")
  s.homepage    = 'https://github.com/angelx/solidus_mercado_pago'
  s.email       = 'ngel@protonmail.com'
  s.license     = 'MIT'

  s.add_dependency 'rest-client', '~> 2.0'
  s.add_dependency 'solidus', ['>= 2.0', '< 3']
  s.add_dependency 'solidus_auth_devise', ['>= 2.0', '< 3']
  s.add_dependency 'solidus_support'
  s.add_dependency 'deface', '~> 1.0'
  s.add_dependency 'canonical-rails', '~> 0.2.0'
  s.add_dependency 'jquery-rails',    '~> 4.1'

  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'capybara-accessible'
  s.add_development_dependency 'generator_spec'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'solidus_dev_support'
  s.add_development_dependency 'webmock'
end
