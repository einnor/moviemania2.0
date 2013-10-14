class PagesController < ApplicationController
  def home
  	@title = "Home"
  	@cinemas = Cinema.all
  	@nowshowings = Nowshowing.all
  end

  def contacts
  	@title = "Contacts"
  end

  def about
  	@title = "About"
  end

  def help
  	@title = "Help"
  end

  def contactus
  	@title = "Contact Us"
  end

  def allnowshowing
  	@nowshowings = Nowshowing.all
  	@title = "All Now Showing"
  end

  def allcomingsoon
  	@comingsoons = Comingsoon.all
  	@title = "All Coming Soon"
  end
end
