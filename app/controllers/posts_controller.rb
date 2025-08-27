class PostsController < ApplicationController
  def index
    @theme = Theme.find(params[:theme_id])
    @posts = @theme.posts
  end

  def create
    @theme = Theme.find(params[:theme_id])
    @post = @theme.posts.build(post_params)
    if @post.save
      redirect_to theme_posts_path(@theme)
    else
      redirect_to theme_posts_path(@theme), alert: 'このフィールドを入力して下さい。'
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
