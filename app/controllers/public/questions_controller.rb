class Public::QuestionsController < ApplicationController

  def index
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    @subject_id = Subject.find_by(subject_name,:@question.subject_name).pluck(:subject_id)
    @question.subject_id = @subject_id
  end

  private
  def question_params
     params.require(:question).permit(:title, :body, :user_id, :subject_id, :subject_name)
  end

end
