class MoviesController < ProtectedController
  before_action :set_movie, only: %i[update destroy]

  # GET /movies
  def index
    @movies = current_user.movies.all

    render json: @movies
  end

  # GET /movies/1
  def show
    render json: @movie
  end

  # POST /movies
  def create
    @movie = current_user.movies.build(movie_params)

    if @movie.save
      render json: @movie, status: :created, location: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  def update
    if @movie.update(movie_params)
      # render json: @movies
      head :no_content
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy

    head :no_content
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = current_user.movies.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_params
      params.require(:movie).permit(:title, :genre, :description, :was_watched, :rating, :re_watch)
    end

    private :set_movie, :movie_params
end
