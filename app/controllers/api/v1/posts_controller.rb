class Api::V1::PostsController < BaseApiController

  def index
    posts = Post.all.order(created_at: "DESC")

    render json: posts
  end

  def create
    post = Post.create post_params

    render json: post
  end

  private
  def post_params
    params.permit(:title, :body, :published_at)
  end
end
