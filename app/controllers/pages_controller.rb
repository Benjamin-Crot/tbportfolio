class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :apropos, :portfolio, :contact ]

  def home
  end
end
