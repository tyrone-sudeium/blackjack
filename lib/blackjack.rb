require 'cloudsdale'

class Blackjack
  attr_accessor :client, :opts

  def initialize(options)
    self.opts = options
  end

  def run
    EM.run do
      self.client = Cloudsdale::Client.new(username: opts[:email], 
        password: opts[:password])
      
      client.on_message do |cloud_id, msg|
        message_received(cloud_id, msg)
      end

      client.connect
    end
  end

  def message_received(cloud_id, msg)
    puts msg.content
  end
end
