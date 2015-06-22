class SayController < ApplicationController
  def welcome
    render :home
  end

  def form
    # render :form
  end

  def say_things
    system "say", params[:words]
    #flash[:notice] = "Said '#{params[:words]}. Again?"
    redirect_to say_form_path, notice: "Said '#{params[:words]}. Again?"
  end
end