class Public::ChildSubjectsController < ApplicationController

  def new
    @child_subject = ChildSubject.new
    @subject = Subject.find_by(id:params[:id])
  end

  def create
    @child_subject = ChildSubject.new(child_subject_params)
    if @child_subject.save
      redirect_to public_subjects_path
    else
      redirect_to public_path
    end
  end

  private

  def child_subject_params
     params.require(:child_subject).permit(:child_subject_name, :subject_id)
  end

end
