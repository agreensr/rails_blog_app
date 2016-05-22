class Article < ActiveRecord::Base
  # Makes sure there must be a title and description before it is saved to the database.
  #
  validates :title, presence: true, length: {minimum: 3, maximum: 50}
  validates :description, presence: true, length: { minimum: 10, maximum: 300}
end