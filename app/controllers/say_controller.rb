class SayController < ApplicationController
  def welcome
    @recent_speeches = Speech.last 3
    render :home
  end

  def form
    # render :form
  end

  def say_things
    s = Speech.create! words: params[:words]
    s.perform!
    #flash[:notice] = "Said '#{params[:words]}. Again?"
    redirect_to say_form_path, notice: "Said '#{s.words}'. Again?"
  end
end