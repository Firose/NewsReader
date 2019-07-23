class NewsController < ApplicationController
	def index
		if params[:term]
			@news = New.search_by_full_name(params[:term])
		else
		  @news = New.page(params[:page]).per(10).order('id')
		end
	end

  def show
  	@new = New.find_by(id: params[:id])
  end
end
