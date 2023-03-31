class HomeController < ApplicationController
  def index
    @capsules = Capsule.all.sample 6
    @charities = Charity.all.sample 3
    @needs = Need.all
  end



end
