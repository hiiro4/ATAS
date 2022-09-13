class Public::QuestionsController < ApplicationController

  def index
  end

  def show #科目ごとの表示ページ
    @each_subject = Subject.find_by(id:params[:id])
    @question = Question.where(subject_id:params[:id])
    @subject = Subject.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    subject_name_local = Subject.find_by(id:@question.subject_id)
    @question.subject_name = subject_name_local.subject_name#暫定措置、viewページでの入力方法判明次第対処-->
    if @question.save
      redirect_to public_homes_path
    else
      render new_public_question_path
    end
  end

  def destroy
    @question = Question.find_by(params[:id])
    @question.delete
    redirect_to public_homes_path
  end

  private
  def question_params
     params.require(:question).permit(:title, :body, :user_id, :subject_id, :subject_name)
  end

end
