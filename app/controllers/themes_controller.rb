class ThemesController < ApplicationController
  def index
    @theme = Theme.first
    redirect_to theme_posts_path(@theme)
  end

  def show
    @theme = Theme.find(params[:id])
    redirect_to theme_posts_path(@theme)
  end

  def random
    @theme = Theme.order('RANDOM()').first
    # session[:current_theme_id] = @theme.id # セッションに保存
    redirect_to theme_posts_path(@theme)
  end
end
