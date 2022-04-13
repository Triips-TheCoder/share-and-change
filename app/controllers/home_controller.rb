class HomeController < ApplicationController
  def index
    @capsules = Capsule.all.limit 5
  end
end
