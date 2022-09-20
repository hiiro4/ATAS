class Public::UsersController < ApplicationController
  def top
  end

  def show
    @user = User.find(params[:id])
    @question = Question.where(user_id: params[:id])
    @answer = Answer.all
  end

end
