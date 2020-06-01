require 'rspec'
require 'page-object'
require 'data_magic'
require 'cucumber'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require 'report_builder'

Capybara.default_driver = :selenium

Capybara.default_max_wait_time = 15

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/credencial.yml")

BROWSER = ENV['BROWSER']
Capybara.register_driver :selenium do |app|
  if BROWSER.eql?('chrome')
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  elsif BROWSER.eql?('chrome_headless')
    Capybara::Selenium::Driver.new(app, :browser => :chrome,
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
        'chromeOptions'=> { 'args' => ['--headless',
                                      'disable-gpu',
                                      '--disable-dev-shm-usage',
                                      '--no-sandbox'] }
      )  
    )
  end
end