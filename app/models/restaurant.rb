class Restaurant < ApplicationRecord
    has_many :reviews

    before_create :slugify

    def slugify
        self.slug = title.parameterize
    end

    def avg_score
        reviews.average(:score).to_f(2)
    end 
end
