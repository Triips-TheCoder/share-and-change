class PagesController < ApplicationController

  add_breadcrumb "Accueil", :root_path
  
  def index_admin
    @capsules = Capsule.all.sample 6
    @charities = Charity.all.sample 5
    @needs = Need.all
  end
  
  def qui_sommes_nous
    add_breadcrumb "Qui sommes-nous", qui_sommes_nous_path
  end

  def contact
    add_breadcrumb "Contact", contact_path
  end

  def cgu
    add_breadcrumb "CGU", cgu_path
  end

  def mentions_legales
    add_breadcrumb "Mentions légales", mentions_legales_path
  end
end
