require 'rspec/expectations'
require 'appium_lib'
require 'appium_console'
require 'yaml'
require 'pry'
require 'faker'
require 'cpf_faker'
require 'ffaker'
 
def caps
     {   caps:{
      appiumVersion:    "1.15.1",
      appiumPort:       "4723",
      platformName:     "Android",
      deviceName:       "Pixel_2",
      autoGrantPermissions: "true",
      app:              (File.join(File.dirname(__FILE__),"cadastro.produto.apk")) }
    }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object

ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}.yml")

WAIT_SECONDS = 30

