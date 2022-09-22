class Public::QuestionsController < ApplicationController

  def index
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.where(question_id:params[:id])
    @answering = Answer.new
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    subject_name_local = Subject.find_by(id:@question.subject_id)
    child_subject_name_local = ChildSubject.find_by(id:@question.child_subject_id)
    @question.subject_name = subject_name_local.subject_name#暫定措置、viewページでの入力方法判明次第対処-->
    @question.child_subject_name = child_subject_name_local.child_subject_name#暫定措置、viewページでの入力方法判明次第対処-->
    if @question.save!
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
     params.require(:question).permit(:title, :body, :user_id, :subject_id, :subject_name, :child_subject_id, :child_subject_name, images: [])
  end

end
