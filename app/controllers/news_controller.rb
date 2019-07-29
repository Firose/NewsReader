class NewsController < ApplicationController
	def index
		news  = params[:term].present? ? New.search_by_full_name(params[:term]) : New.all
		page  = params[:page].presence || 1
		@news = news.page(page).per(10).order(:id)
	end

  def show
  	begin
  		@new = New.find params[:id]
  	rescue => e
  		@new = nil
  	end
  end
end
