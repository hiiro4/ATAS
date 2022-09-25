class Public::FavoritesController < ApplicationController
  def create
    question = Question.find(params[:question_id])
    question = current_user.favorites.new(question_id: question.id)
    question.save
    redirect_to public_question_path(params[:question_id])
  end

  def destroy
    question = Question.find(params[:question_id])
    question = current_user.favorites.find_by(question_id: question.id)
    question.destroy
    redirect_to public_question_path(params[:question_id])
  end

end
