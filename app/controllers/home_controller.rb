class HomeController < ApplicationController
  def index
    @capsules = Capsule.all.sample 5
  end

end
