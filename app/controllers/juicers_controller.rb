class JuicersController < ApplicationController
  def index
    @juicers = Juicer.all.sort
    @juicer = Juicer.new
  end

  def create
    @juicer = Juicer.create(juicer_params)
  end

  private

  def juicer_params
    params.require(:juicer).permit(:url)
  end
end
