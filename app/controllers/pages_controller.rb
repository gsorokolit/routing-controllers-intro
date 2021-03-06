class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
    render  :welcome
  end

  def about
    render :about
  end

  def contest
     flash[:notice] = "Sorry, the contest has ended"
     redirect_to '/welcome'
    render :contest
  end

  def kitten

    end

    def kittens

      end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end

  def secrets
      if params[:magic_word] == "fart"
        render :secrets
      else
        flash[:notice] = "Sorry, you are note authorized to view this page"
        redirect_to '/welcome'

      end
    end
  end
