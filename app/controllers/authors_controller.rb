class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
    # redirect_to invalid_input_path and return unless model.valid?
    # redirect_to isbn_lookup_failed_path and return unless model.do_isbn_lookup
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
