class Public::SubjectsController < ApplicationController

  def index
    @subject = Subject.all
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to public_subjects_path
    else
      redirect_to new_public_subject_path
    end
  end

  private
  def subject_params
     params.require(:subject).permit(:subject_name)
  end

end
