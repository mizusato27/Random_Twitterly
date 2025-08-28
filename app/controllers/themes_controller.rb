class ThemesController < ApplicationController
  def index
    # ルートURLでは1つ目のお題を表示
    @theme = Theme.first
    redirect_to theme_posts_path(@theme) # themes/1/posts へリダイレクト
  end

  def show
    # URLから自動的にテーマIDを取得
    @theme = Theme.find(params[:id])
    redirect_to theme_posts_path(@theme)
  end

  def random
    @theme = Theme.order('RANDOM()').first
    redirect_to theme_posts_path(@theme)
  end
end
