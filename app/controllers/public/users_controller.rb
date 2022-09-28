class Public::UsersController < ApplicationController
  before_action :redirect_top, only: ["show"], if: proc { current_user.role != 1 }

  def top
  end

  def show
    @user = User.find(params[:id])
    @question = Question.where(user_id: params[:id]).order(created_at: :desc).page(params[:question]).per(10)
    @answer = Answer.all
    my_favorite = Favorite.where(user_id: current_user.id).pluck(:question_id)
    @favorite = Question.where(id: my_favorite).order(created_at: :desc).page(params[:favorite]).per(10)
  end

  private

def redirect_top
  redirect_to public_homes_path
end


end
