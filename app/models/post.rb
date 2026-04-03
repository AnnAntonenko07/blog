class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 3, maximum: 200 }
  validates :body,  presence: true, length: { minimum: 10 }
  validates :author, presence: true

  def reading_time
    words = body.split.size
    minutes = (words / 200.0).ceil
    "#{minutes} хв читання"
  end
end
