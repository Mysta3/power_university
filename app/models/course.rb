class Course < ApplicationRecord 
  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  validates :short_name, presence: true, length: { minimum: 5, maximum: 15 }
  validates :description, presence: true, length: { minimum: 10, maximum: 250 }

  def index
    @courses = Course.all
  end
end

  