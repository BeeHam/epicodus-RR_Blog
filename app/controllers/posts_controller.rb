class PostsController < ApplicatinController
  def index
    @posts = Post.all
  end
end
