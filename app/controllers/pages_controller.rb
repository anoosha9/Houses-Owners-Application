class PagesController < ApplicationController
  def home
    redirect_to owners_path
  end

  def about
  end

  def contact
  end
end
