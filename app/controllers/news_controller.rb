class NewsController < ApplicationController
	def index
		if current_user
			news  = params[:term].present? ? New.search_by_full_name(params[:term]) : New.all
			page  = params[:page].presence || 1
			@news = news.page(page).per(10).order(:id)
		else
			redirect_to login_path
		end
	end

  def show
  	if current_user
  		@new = New.find params[:id]
  		# rating = @new.rating.map {|r| r if r.user_id == current_user.id}.compact.first
  		# @rating = rating.present? ? rating.rating_value : 0
  		@all_rating = @new.rating
  	else
  		redirect_to login_path
  	end
  end
end
