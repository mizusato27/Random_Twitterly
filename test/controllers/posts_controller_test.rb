require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get posts_url
    assert_response :success
  end

  test 'should post create' do
    assert_difference('Post.count', 1) do
      post posts_url, params: { post: { content: 'テスト投稿', theme_id: themes(:one).id } }
    end
    assert_redirected_to root_url
  end
  # [todo] posts_spec.rb で書いてみる
end
