class DatabaseController < ApplicationController

  def seed
    Rails.application.load_seed
    redirect_to "/"
  end


end
