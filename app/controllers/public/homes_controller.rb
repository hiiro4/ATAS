class Public::HomesController < ApplicationController
  def index
    @subject = Subject.all
    @question = Question.all.limit(5)
    @answer = Answer.all
  end

  def show  #科目ごとの表示ページ
    @each_subject = Subject.find_by(id:params[:id])
    @question = Question.where(subject_id:params[:id])
    @subject = Subject.all
  end
end
