# frozen_string_literal: true

class Article < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :votes, foreign_key: :article_id
  has_many :voters, through: :votes, source: :user
  has_many :organizations, foreign_key: :article_id, inverse_of: :article
  has_many :categories, through: :organizations
  has_many :comments
  # accepts_nested_attributes_for :categories

  # def categories_attributes=(category_attributes)
  #   category_attributes.values.each do |category_attribute|
  #     category = Category.find_or_create_by(category_attribute)
  #     self.categories << category
  #   end
  # end

  validates_presence_of :title
  validates_length_of :title, minimum: 4
  validates_presence_of :text
  validates_length_of :title, minimum: 4
  validates_presence_of :image
end
