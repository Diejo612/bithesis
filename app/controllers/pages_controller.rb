class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :recursos ]

  def home
  end

  def recursos

  end
end
