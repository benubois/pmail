require 'fileutils'
module Pmail
  class Config
    
    include FileUtils
    
    FILE = "#{ENV['HOME']}/.pmail"
    
    attr_reader :settings

    def initialize
      @settings = read_settings
    end
    
    def read_settings
      File.exist?(FILE) ? YAML.load_file(FILE) : {}
    end

  end
  
end