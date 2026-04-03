class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  # GET /posts
  def index
    @posts = Post.order(created_at: :desc)
  end

  # GET /posts/:id
  def show
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # GET /posts/:id/edit
  def edit
  end

  # POST /posts
  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: "Пост успішно створено!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /posts/:id
  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Пост успішно оновлено!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /posts/:id
  def destroy
    @post.destroy
    redirect_to posts_url, notice: "Пост видалено."
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :author)
  end
end
