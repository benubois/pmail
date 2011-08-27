require 'thor'
require 'pmail/mail'

module Pmail
  class CLI < Thor

    desc "test", "test param"
    def test()
      puts Pmail::Food.portray(name)
    end
    
  end
end