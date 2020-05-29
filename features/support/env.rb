require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require_relative 'helper.rb'
require 'ffi'
require 'pry'                    
require 'mysql2'
require 'time'
require 'date'

CONFIG = YAML.load_file(File.dirname(__FILE__)+"/ambientes/teste.yml")
World(Helper)

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = CONFIG['url_padrao']
    config.default_max_wait_time = 10
end
