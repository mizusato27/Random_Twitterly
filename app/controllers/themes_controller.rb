class ThemesController < ApplicationController
  def index
    @theme = session[:current_theme_id] ? Theme.find(session[:current_theme_id]) : Theme.first
    @posts = @theme.posts
  end

  def random
    @theme = Theme.order("RANDOM()").first
    session[:current_theme_id] = @theme.id # セッションに保存
    redirect_to root_path
  end
end
