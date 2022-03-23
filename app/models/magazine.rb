class Magazine < ActiveRecord::Base

    has_many :subscriptions
    has_many :readers, through: :subscriptions

    def email_list
        # binding.pry
        self.readers.map do |reader|
            # binding.pry
            reader.email
        end
    end

    def self.most_popular
        # binding.pry
        self.all.max_by do |magazine|
            # binding.pry
            magazine.subscriptions.length
        end
    end
  
end