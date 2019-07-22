class NewsController < ApplicationController
	def index
    @news = New.all.order('id')
  end

  def show
  	@new = New.find_by(id: params[:id])
  end
end