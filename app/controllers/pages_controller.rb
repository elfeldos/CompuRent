class PagesController < ApplicationController
  def home
    @computers = Computer.all
  end
end
