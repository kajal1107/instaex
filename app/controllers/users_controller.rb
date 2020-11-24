class UsersController < ApplicationController
	def suggestion
		@users = User.all
	end

	def disp
		@user = User.find(params[:id])
	end

	def follow
		@user = User.find(params[:id])
		@user.following_relationships.create(following_id: current_user.id)
		#following_relationships.create(following_id: @user.id)
	end

	def unfollow
	#binding.pry
		@user = User.find(params[:id])
		@user.following_relationships.find_by(following_id: @user.id).destroy
		#@user.followers.destroy
		redirect_to suggestion_path
	end
end
