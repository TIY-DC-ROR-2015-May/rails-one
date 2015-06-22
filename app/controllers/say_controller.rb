class SayController < ApplicationController
  def form
    # render :form
  end

  def say_things
    system "say", params[:words]
    redirect_to "/"
  end
end