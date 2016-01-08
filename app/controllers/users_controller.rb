class UsersController < ApplicationController

  def show
    @user = current_user
    @matches = @user.generate_matches
  end
end
