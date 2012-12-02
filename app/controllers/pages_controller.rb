class PagesController < ApplicationController
  def index
    @wish = Wish.new(:ip => request.ip)
  end
end
