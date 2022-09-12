class Public::HomesController < ApplicationController
  def index
    @subject = Subject.all
  end
end
