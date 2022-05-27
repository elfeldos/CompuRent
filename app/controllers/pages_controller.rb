class PagesController < ApplicationController
  def home
    @computers = Computer.all
    @user = current_user
  end

  def components
  end

  def profile
    @user = current_user
    @user_full_name = @user.full_name
    @user.computers
  end

  def how
  end
end
