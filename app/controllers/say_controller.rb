class SayController < ApplicationController
  def form
    # render :form
  end

  def say_things
    system "say", params[:words]
    #flash[:notice] = "Said '#{params[:words]}. Again?"
    redirect_to "/input", notice: "Said '#{params[:words]}. Again?"
  end
end