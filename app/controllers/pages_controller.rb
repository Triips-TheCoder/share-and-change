class PagesController < ApplicationController

  def index_admin
      @capsules = Capsule.all.sample 6
      @charities = Charity.all.sample 5
      @needs = Need.all
  end

  def qui_sommes_nous
  end

  def contact
  end

  def cgu
  end

  def mentions_legales
  end
end
