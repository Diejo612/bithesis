class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :recursos ]

  def home
  end

  def recursos
  end


  def cursos
  end
  
  def about
  @user = current_user
  end
end
