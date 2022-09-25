class Public::UsersController < ApplicationController
  def top
  end

  def show
    @user = User.find(params[:id])
    @question = Question.where(user_id: params[:id])
    @answer = Answer.all
    my_favorite = Favorite.where(user_id: current_user.id).pluck(:question_id)
    @favorite = Question.where(id: my_favorite)
  end

end
