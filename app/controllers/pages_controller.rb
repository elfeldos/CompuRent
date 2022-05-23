class PagesController < ApplicationController
  def home
    @computers = Computer.all
  end

  def components
  end
end
