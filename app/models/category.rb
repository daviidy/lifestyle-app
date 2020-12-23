class Category < ApplicationRecord
  has_many :organizations, foreign_key: :categoryId
  has_many :related_articles, through: :organizations, source: :articleId
  validates_presence_of :name
  validates_length_of :name, minimum: 3
  validates_presence_of :priority
end
