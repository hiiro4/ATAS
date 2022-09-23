class Public::AnswersController < ApplicationController

  def create
    question_local = Question.find(params[:question_id])
    answer_local = Answer.new(answer_params)
    answer_local.user_id = current_user.id
    answer_local.question_id = question_local.id
    answer_local.save
    redirect_to public_question_path(params[:question_id])
  end

  private

  def answer_params
    params.require(:answer).permit(:answer, images: [])
  end

end
