require 'postmark'
require 'mail'
require 'yaml'

module Pmail
  class Message
    
    attr_writer :from, :to, :subject, :body, :api_key
    
    def initialize
      @from    = ''
      @to      = ''
      @subject = ''
      @body    = ''
      @api_key = ''
    end
    
    def send
      
      message = Mail.new
      message.delivery_method(Mail::Postmark, :api_key => @api_key)
           
      message.from         = @from
      message.to           = @to
      message.subject      = @subject
      message.body         = @body
      
      # TODO make this user configurable
      message.content_type = "text/plain"

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