require 'postmark'
require 'mail'

module Pmail
  class Message
    
    attr_accessor :from, :to, :subject, :body
    
    def initialize
      @from    = ''
      @to      = ''
      @subject = ''
      @body    = ''
    end
    def send
      message = Mail.new
      message.delivery_method(Mail::Postmark, :api_key => "f13c6cc7-4f17-4d8e-a473-4b3465b61f4a")
     
      message.from         = @from
      message.to           = @to
      message.subject      = @subject
      message.body         = @body
      message.content_type = "text/html"

      # # You can set customer headers if you like:
      # message["CUSTOM-HEADER"] = "my custom header value"
      # 
      # # Added a tag:
      # message.tag = "my-tracking-tag"
      # 
      # # Add attachments:
      # message.postmark_attachments = [File.open("/path"), File.open("/path")]
      # 
      # # Or specify a reply-to address (can also be an array of addresses):
      # message.reply_to = "penny@bigbangtheory.com"
     
     
      message.deliver
    end    
    
  end
end