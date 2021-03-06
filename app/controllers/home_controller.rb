class HomeController < ApplicationController
  def index
    unless session[:scene_id].nil?
      @question = Question.find_by(scene_id: session[:scene_id])
      @answers = @question.answers
    else 
      session[:scene_id] = 1
      @question = Question.find_by(scene_id: session[:scene_id])
      @answers = @question.answers
    end
  end
end