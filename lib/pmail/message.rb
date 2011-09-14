require 'postmark'
require 'mail'
require 'yaml'

module Pmail
  class Message
    
    def initialize(options = {})      
      @from    = options[:from]
      @to      = options[:to]
      @subject = options[:subject]
      @body    = options[:body]
      @api_key = options[:api_key]
      @format  = options[:format]
    end
    
    def send
      
      message = Mail.new
      message.delivery_method(Mail::Postmark, :api_key => @api_key)
           
      message.from         = @from
      message.to           = @to
      message.subject      = @subject
      message.body         = @body
      message.content_type = "text/#{@format}"

      # TODO add custom header support
      # message["CUSTOM-HEADER"] = "header"
      
      # TODO add tag support
      # message.tag = "tag"
      
      # TODO add attachment support
      # message.postmark_attachments = [File.open("/path")]
      
      # TODO add reply-to support
      # message.reply_to = "reply to"
     
      message.deliver
    end    
    
  end
end