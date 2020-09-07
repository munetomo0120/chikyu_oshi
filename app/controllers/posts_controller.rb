class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :top, :search, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def top
    # ログイン済みユーザーはトップページにアクセスしてもマイページに遷移する
    if user_signed_in?
      redirect_to user_path(current_user.id)
    end
  end

  def index
    @posts = Post.includes(:user).order(created_at: :DESC)
    # マーカーを立てるための記述
    @hash = Gmaps4rails.build_markers(@posts) do |post, marker|
      marker.lat post.latitude
      marker.lng post.longitude
      # infowindowに表示させたいカラム名は変更可能（今はdescription）
      marker.infowindow post.description
    end
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path
    # respond_to do |format|
    #   format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
    #   format.json { head :no_content }
    # end
  end
  
  def show
    # @posts = Post.all
    @hash = Gmaps4rails.build_markers(@post) do |post, marker|
      marker.lat post.latitude
      marker.lng post.longitude
      marker.infowindow post.description
    end
  end

  def search
    @search_posts = Post.search(params[:key])
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

  def post_params
    params.require(:post).permit(:name, :description, :country_id, :latitude, :longitude).merge(user_id: current_user.id)
  end
  
  def set_post
    @post = Post.find(params[:id])
  end

end
