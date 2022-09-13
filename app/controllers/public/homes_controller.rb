class Public::HomesController < ApplicationController
  def index
    @subject = Subject.all
    @question = Question.all.limit(5)
  end
end
