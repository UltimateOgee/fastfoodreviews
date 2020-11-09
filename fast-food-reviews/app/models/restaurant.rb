class Restaurant < ApplicationRecord
    has_many :reviews

    def avg_score
        reviews.average(:score).round(1).to_f
    end
    
    before_create :slugify
    def slugify
        self.slug = name.parameterize
    end
    
end
