class RatingsController < ApplicationController

	def new
		@rating = Rating.new
		@new = New.find(params[:id])
	end

	def create
		# binding.pry
		@new = New.find(params[:id])
		@rating = @new.rating.create(user_id: current_user.id, new_id: @new.id, rating_value: params[:score], comments: params[:comments])
		redirect_to "/news/#{@new.id}"
	end

	# def create
	# 	binding.pry
	# 	@new = New.find(params[:id])
	# 	all_rating = @new.rating
	# 	rating = all_rating.map {|r| r if r.user_id == current_user.id }.compact
	# 	if rating.present?
	# 		@rating = rating.first.update(rating_value: params[:score])
	# 	else
	# 		@rating = @new.rating.create(user_id: current_user.id, new_id: @new.id, rating_value: params[:score])
	# 	end
	# 	redirect_to "/news/#{@new.id}"
	# end
end
