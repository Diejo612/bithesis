class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :recursos, :articulo1, :cursos ]

  def home
  end

  def recursos
  end


  def cursos
  end

  def about
  @user = current_user
  end

  def articulo1
  end
end
