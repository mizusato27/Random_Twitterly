class ThemesController < ApplicationController
  def index
    @theme = session[:current_theme_id] ? Theme.find(session[:current_theme_id]) : Theme.first
  end

  def random
    @theme = Theme.order("RANDOM()").first
    session[:current_theme_id] = @theme.id
    redirect_to root_path
  end
end
