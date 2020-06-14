class SearchController < ApplicationController

  def search


    @organization=Organization.where(name: params[:q])

    @user=User.joins(:profile).where(username: params[:q])
    @profile=Profile.joins(:user).where(name: params[:q])


    @eventCreatorU = Event.joins(:user).where(users: params[:q])


    @eventCreatorP = Event.joins(user: :profile).where(users: {profile: {name: params[:q]}})


  end


end
