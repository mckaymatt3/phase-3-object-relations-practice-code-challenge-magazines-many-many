class Subscription < ActiveRecord::Base

    belongs_to :magazine
    belongs_to :reader

    def print_details
        # binding.pry
        "#{self.reader.name} subscribed to #{self.magazine.title} for #{self.price}"
    end
  
    



end