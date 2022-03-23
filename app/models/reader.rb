class Reader < ActiveRecord::Base

    has_many :subscriptions
    has_many :magazines, through: :subscriptions

    def subscribe(magazine,price)
        # binding.pry
        Subscription.create(reader_id: self.id, magazine_id: magazine.id, price: price)
    end

    def total_subscription_price
        # binding.pry
        self.subscriptions.sum(:price)
    end

    def cancel_subscription(magazine)
        # binding.pry
        self.subscriptions.destroy_by(magazine_id: magazine.id)
        # this_magazine = self.subscriptions.find_by(magazine_id: magazine.id)
        # this_magazine.destroy
    end
end