class CategoriesController < ApplicationController
  before_action :authorize, only: %i[index]

  def index

  end
end
