class Show < ActiveRecord::Base
    def self.highest_rating
        maximum(:rating)
    end

    def self.most_popular_show
        value = where(rating:highest_rating)
        value[0]
    end

    def self.lowest_rating
        minimum(:rating)
    end

    def self.least_popular_show
        value = where(rating:lowest_rating)
        value[0]
    end

    def self.ratings_sum
        sum(:rating)
    end

    def self.popular_shows
        value = where('rating > 5')
        value
    end
    
    def self.shows_by_alphabetical_order
        order :name
    end
end