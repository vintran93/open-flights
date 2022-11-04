class Airline < ApplicationRecord
    has_many :reviews

    # set slug for airline before we create it in our database
    before_create :slugify


    def slugify
        self.slug = name.parameterize
    end

    def avg_score
        reviews.average(:score).round(2).to_f #float
    end 


end
