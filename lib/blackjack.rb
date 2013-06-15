require 'cloudsdale'

class Blackjack
  attr_accessor :client

  def run
    EM.run do
      self.client = Cloudsdale::Client.new
      
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
