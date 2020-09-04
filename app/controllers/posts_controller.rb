class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :top]
  def top
    # ログイン済みユーザーはトップページにアクセスしてもマイページに遷移する
    if user_signed_in?
      redirect_to user_path(:id)
    end
  end

  private

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
  
end
