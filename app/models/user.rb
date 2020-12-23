class User < ApplicationRecord
  has_many :articles, foreign_key: :authorId, class_name: 'Article'
  has_many :votes, foreign_key: :userId
  has_many :voted_articles, through: :votes, source: :articleId
  validates_presence_of :name
  validates_length_of :name, minimum: 4
end
