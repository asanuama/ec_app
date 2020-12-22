class Admins::GenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genre = Genre.new
    @genres = Genre.page(params[:page]).per(10)
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      flash[:notice] = "ジャンルを登録しました"
      redirect_to admins_genres_path
    else
      @genres = Genre.page(params[:page]).per(10)
      render 'index'
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      flash[:notice] = "ジャンル情報を更新しました"
      redirect_to admins_genres_path
    else
      render 'edit'
    end
  end

  private
  def genre_params
    params.require(:genre).permit(:name, :is_active)
  end

end
