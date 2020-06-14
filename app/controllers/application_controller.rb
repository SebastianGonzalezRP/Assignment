class ApplicationController < ActionController::Base
  # we will need this when create the aside
  #
  #
  before_action :set_customer

  private

  def set_customer
   @current_profile = Profile.first.name
  end
end
