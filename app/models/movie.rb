class Movie < ApplicationRecord
    validates :title, uniqueness: true, presence: true

    scope :filter_by_title, -> (title) { where('title LIKE ?', "%#{title}%") }
end
