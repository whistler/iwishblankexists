class PagesController < ApplicationController
  def index
    @wish = Wish.new(:ip => request.ip)
  end

  def result
    @wishnames = Wishname.all
  end

  # def find_out
  # 	binding.pry
  # 	@wishname = Wishname.new(params[:wishname])

  # 	respond_to do |format|
  #     if @wishname.save
  #       format.html { redirect_to pages_result_path, notice: 'Wishname was successfully created.' }
  #     else
  #       format.html { render :back }
  #     end
  #   end
  # end
end
