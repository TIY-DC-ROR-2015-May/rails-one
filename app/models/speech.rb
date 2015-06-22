class Speech < ActiveRecord::Base
  def perform!
    system "say", words
  end
end
