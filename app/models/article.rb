class Article < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :votes, foreign_key: :articleId
  has_many :authors, through: :votes, source: :userId
  has_many :organizations, foreign_key: :articleId
  has_many :categories, through: :organizations, source: :categoryId
  validates_presence_of :title
  validates_length_of :title, minimum: 4
  validates_presence_of :text
  validates_length_of :title, minimum: 10
  validates_presence_of :image

end
